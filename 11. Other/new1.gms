$title Cross Entropy SAM Estimation (CESAM,SEQ=228)

$onText
CESAM illustrates a cross entropy technique for estimating the cells
of a consistent SAM assuming that the initial data are inconsistent
and measured with error. The method is applied to a stylized macro
SAM for Mozambique. Some macro control totals are assumed known with
error, and also all the row and column totals are assumed
known only with error. We assume that the user can specify
a prior estimate of the standard error of the estimates of the row
and column sums and of the macro control totals.


Robinson, S, Cattaneo, A, and El-Said, M, Updating and Estimating
a Social Accounting Matrix Using Cross Enthropy Methods. Economic
System Research 13, 1 (2001).

Golan, G, Judge, G, and Miller, D, Maximum Enthropy Econometrics.
John Wiley and Sons, 1996.

Programmed by Sherman Robinson and Moataz El-Said, November 2000.
Trade and Macroeconomics Division
International Food Policy Research Institute (IFPRI)
2033 K Street, N.W.
Washington, DC 20006 USA
Email: S.Robinson@CGIAR.ORG
       M.El-Said@CGIAR.ORG

Data set is based on a SAM developed by C. Arndt, A. S. Cruz, H. T.
Jensen, S. Robinson, and F. Tarp, "Social Accounting Matrices
for Mozambique - 1994 and 1995." TMD Discussion Paper No. 28, IFPRI,
July 1998.

Original version programmed by Sherman Robinson and Andrea Cattaneo.

Keywords: mixed complementarity problem, micro economics, cross entropy,
          social accounting matrix

$offText

Set
   i     'sam accounts'
         / ACT 'Activities',      COM 'Commodities',     FAC 'Factors'
           ENT 'Enterprises',     HOU 'Households',      GRE 'Govt recurrent expenditures'
           GIN 'Govt investment', CAP 'Capital account', ROW 'Rest of world'
           TOTAL /
   ii(i) 'all accounts in i except total'
         / ACT 'Activities',      COM 'Commodities',     FAC 'Factors'
           ENT 'Enterprises',     HOU 'Households',      GRE 'Govt recurrent expenditures'
           GIN 'Govt investment', CAP 'Capital account', ROW 'Rest of world' /
   macro 'macro controls' / gdpfc2, gdp2 /

* The set jwt defines the dimension of the support set for the error
* distribution and the number of weights that must be estimated for each
* error. In this case, we specify a five parameter error distribution.
* For a three parameter distribution, jwt is set to / 1*3 /.
   jwt   'set of weights for errors in variables' / 1*5 /;

* ii(i)       = yes;
* ii("Total") =  no;

Alias (i,j), (ii,jj);

* SAM DATABASE
Table SAM(i,j) 'social accounting matrix'
                  ACT         COM        FAC        ENT
   ACT            0.0  14827.4240        0.0        0.0
   COM      7917.5040         0.0        0.0        0.0
   FAC      9805.4140         0.0        0.0        0.0
   ENT            0.0         0.0  3699.7060        0.0
   HOU            0.0         0.0  6031.3080  3417.5060
   GRE       733.6000    357.4000    74.4000   165.2000
   GIN            0.0         0.0        0.0        0.0
   CAP            0.0         0.0        0.0   150.0000
   ROW            0.0   5573.8150        0.0        0.0
   Total   18456.5180   20758.639   9805.414   3732.706

   +              HOU         GRE        GIN        CAP
   ACT      2101.0490     -0.3270        0.0        0.0
*  COM      6753.3320   1764.5000  2118.5000  2197.7980
   COM      6953.3320   1564.5000  2518.5000  2597.7980
   FAC            0.0         0.0        0.0        0.0
   ENT            0.0     33.0000        0.0        0.0
   HOU            0.0     29.6000        0.0        0.0
   GRE       139.5000         0.0        0.0        0.0
   GIN            0.0         0.0        0.0        0.0
   CAP       649.1560   -356.6730  -406.2000        0.0
   ROW            0.0         0.0        0.0        0.0
   Total     9643.037      1470.1     1712.3   2197.798

   +              ROW       Total
   ACT      1488.1570   18416.303
   COM            0.0   20751.634
   FAC            0.0    9805.414
   ENT            0.0    3732.706
   HOU       209.5010    9687.915
   GRE            0.0      1470.1
   GIN      1712.3000      1712.3
   CAP      2163.8570     2200.14
   ROW            0.0    5573.815
   Total     5573.815            ;

* Parameters and Scalars
Parameter
   SAM0(i,j)        'base SAM transactions matrix'
   T0(i,j)          'matrix of SAM transactions (flow matrix)'
   T1(i,j)          'SAM transactions adjusted to eliminate negative entries'
   Abar0(i,j)       'prior SAM coefficient matrix'
   Abar1(i,j)       'prior SAM adjusted to eliminate negative coefficients'
   Target0(i)       'targets for macro SAM column totals'
   vbar1(i,jwt)     'error support set 1'
   vbar2(macro,jwt) 'error support set 2'
   wbar1(i,jwt)     'weights on error support set 1'
   wbar2(macro,jwt) 'weights on error support set 2'
   sigmay1(i)       'prior standard error of column sums'
   sigmay2(macro)   'prior standard error of macro aggregates'
   epsilon          'tolerance to allow zero entries in SAM';

Scalar
   gdp0   'base GDP'
   gdp00  'GDP from final SAM'
   gdpfc0 'GDP at factor cost';

* Initializing Parameters
SAM("TOTAL",jj) = sum(ii, SAM(ii,jj));
SAM(ii,"TOTAL") = sum(jj, SAM(ii,jj));
sam0(i,j)       = sam(i,j);

* Divide SAM entries by 1000 for better scaling.
* The SAM is scaled to enhance solver efficiency. Nonlinear solvers are
* more efficient if variables are scaled similarly. In this case,
* coefficients to be estimated range between 0 and 1, so SAM values
* are also scaled.

Scalar scalesam 'scaling value' / 1000 /;

sam(i,j)                = sam(i,j)/scalesam ;
Abar0(ii,jj)$SAM(ii,jj) = SAM(ii,jj)/SAM("TOTAL",jj);

T0(ii,jj)      = SAM(ii,jj);
T0("TOTAL",jj) = sum(ii, SAM(ii,jj));
T0(ii,"TOTAL") = sum(jj, SAM(ii,jj));

epsilon = .00001;

display T0, Abar0;

$onText
CROSS ENTROPY
RED ALERT!!!

The ENTROPY DIFFERENCE procedure uses LOGARITHMS: negative flows in
the SAM are NOT GOOD!!!

The option used here is to detect any negative flows and net them out
of their respective symmetric cells, e.g.
    negative flow column to row is set to zero
    and added to corresponding row to column as a positive number.
The entropy difference method can then be implemented.
After balancing, the negative SAM values are returned to their
original cells for printing.
$offText

Set red(i,j) 'set of negative SAM flows';

Parameter
   redsam(i,j) 'negative SAM values only'
   rtot(i)     'row total'
   ctot(i)     'column total';

rtot(ii) = sum(jj, T0(ii,jj));
ctot(jj) = sum(ii, T0(ii,jj));

red(ii,jj)$(T0(ii,jj) < 0) = yes;
redsam(ii,jj)              = 0;
redsam(ii,jj)$red(ii,jj)   = T0(ii,jj);
redsam(jj,ii)$red(ii,jj)   = T0(ii,jj);

*Note that redsam includes each entry twice, in corresponding row
*and column. So, redsam need only be subtracted from T0.
T1(ii,jj)      = T0(ii,jj) - redsam(ii,jj);
T1("Total",jj) = sum(ii, T1(ii,jj));
T1(ii,"Total") = sum(jj, T1(ii,jj));

redsam("total",jj) = sum(ii, redsam(ii,jj));
redsam(ii,"total") = sum(jj, redsam(ii,jj));

sam(ii,"total") = sum(jj, T1(ii,jj));
sam("total",jj) = sum(ii, T1(ii,jj));

rtot(ii) = sum(jj, T1(ii,jj));
ctot(jj) = sum(ii, T1(ii,jj));

Abar1(ii,jj) = T1(ii,jj)/sam("total",jj);

display "NON-NEGATIVE SAM", redsam, T1, Abar0, Abar1, rtot, ctot;

* Define set of elements of SAM that can be nonzero. In this case, only
* elements which are nonzero in initial SAM.
Set NONZERO(i,j) 'SAM elements that can be nonzero';
NONZERO(ii,jj)$(Abar1(ii,jj)) = yes;

* Initializing Parameters after accounting for negative values
*   Note that target column sums are being set to average of initial
*   row and column sums. Initial column sums or other values
*   could have been used instead, depending on knowledge of data quality
*   and any other prior information.
target0(ii) = (sam(ii,"total") + sam("total",ii))/2;
gdpfc0 = T1("fac","act");
gdp0   = T1("fac","act") + T1("gre","act") - T1("act","gre") + T1("gre","com");

display gdpfc0, gdp0;

$onText
Define variable bounds on errors

Start from assumed prior knowledge of the standard error (perhaps due
to measurement error) of the column sums. Below, we assume that all
column sums have a standard error of 5%. This is a Bayesian prior,
not a maintained hypothesis.
The estimated error is weighted sum of elements in an error support
set:
  ERR(ii) = sum(jwt, W(ii,jwt)*VBAR(ii,jwt))
where the W's are estimated in the CE procedure.
The prior variance of these errors is given by:
  (sigmay(ii))**2 = sum(jwt, WBAR(ii,jwt)*(VBAR(ii,jwt))**2)
where the WBAR's are the prior on the weights.
The VBARs are chosen to define a domain for the support set of +/- 3
standard errors. The prior on the weights, WBAR, are then calculated
to yield the specified prior on the standard error, sigmay.
In Robinson, Cattaneo, and El-Said (2001), we specify prior weights
(WBAR) that are uniform and set the prior standard error by the
choice of support set, VBAR. In that paper, we use a three-weight
specification (jwt / 1*3 /);

We define two sets of errors with separate weights, W1 and W2. The
first is for specifying errors on column sums, the second for errors
on macro aggregates (defined in the set macro).
$offText

* First, define standard error for errors on column sums.
sigmay1(ii) = 0.05*target0(ii);

* This code assumes a prior mean of zero and a two-parameter
* distribution with specified prior standard error. There are three
* weights, W(ii,jwt), to be estimated. The actual moments are estimated
* as part of the estimation procedure.

$onText
* Set constants for 3-weight error distribution
vbar1(ii,"1") = -3*sigmay1(ii);
vbar1(ii,"2") =  0;
vbar1(ii,"3") = -3*sigmay1(ii);

wbar1(ii,"1") =  1/18;
wbar1(ii,"2") = 16/18;
wbar1(ii,"3") =  1/18;
$offText

$onText
This code assumes a prior mean of zero and a prior value of kurtosis
consistent with a prior normal distribution with mean zero, variance
sigmay**2, and kurtosis equal to 3*sigmay**4. The addition of a prior
on kurtosis requires estimation of 5 weights (jwt = 5);
The prior weights wbar are specified so that:
sum(jwt, wbar(ii,jwt)*vbar(ii,jwt)**4) = 3*sigmay(ii,jwt)**4
as well as defining the variance as above.
The prior weights and support set are also symmetric, so the prior
on all odd moments is zero. The choice of +/- 1 standard error
for vbar(ii,"2") and vbar(ii,"4") is arbitrary.
The actual moments are estimated as part of the estimation procedure.
$offText

* Set constants for 5-weight error distribution
vbar1(ii,"1") = -3*sigmay1(ii);
vbar1(ii,"2") = -1*sigmay1(ii);
vbar1(ii,"3") =  0;
vbar1(ii,"4") =  1*sigmay1(ii);
vbar1(ii,"5") =  3*sigmay1(ii);

wbar1(ii,"1") =  1/72;
wbar1(ii,"2") = 27/72;
wbar1(ii,"3") = 16/72;
wbar1(ii,"4") = 27/72;
wbar1(ii,"5") =  1/72;

* Second, define standard errors for errors on macro aggregates
sigmay2("gdpfc2") = 0.05*gdpfc0;
sigmay2("gdp2")   = 0.05*gdp0;

$onText
* Set constants for 3-weight error distribution
vbar2(ii,"1") = -3*sigmay2(ii);
vbar2(ii,"2") =  0;
vbar2(ii,"3") = -3*sigmay2(ii);

wbar2(ii,"1") =  1/18;
wbar2(ii,"2") = 16/18;
wbar2(ii,"3") =  1/18;
$offText

* Set constants for 5-weight error distribution
vbar2(macro,"1") = -3*sigmay2(macro);
vbar2(macro,"2") = -1*sigmay2(macro);
vbar2(macro,"3") =  0;
vbar2(macro,"4") =  1*sigmay2(macro);
vbar2(macro,"5") =  3*sigmay2(macro);

wbar2(macro,"1") =  1/72;
wbar2(macro,"2") = 27/72;
wbar2(macro,"3") = 16/72;
wbar2(macro,"4") = 27/72;
wbar2(macro,"5") =  1/72;

display vbar1, vbar2, sigmay1, sigmay2;

Variable
   A(ii,jj)      'post SAM coefficient matrix'
   TSAM(ii,jj)   'post matrix of SAM transactions'
   Y(ii)         'row sum of SAM'
   X(ii)         'column sum of SAM'
   ERR1(ii)      'error value on column sums'
   ERR2(macro)   'error value for macro aggregates'
   W1(ii,jwt)    'error weights'
   W2(macro,jwt) 'error weights'
   DENTROPY      'entropy difference (objective)'
   GDPFC         'GDP at factor cost'
   GDP           'GDP at market prices';

* INITIALIZE VARIABLES
A.l(ii,jj)      = Abar1(ii,jj);
TSAM.l(ii,jj)   = T1(ii,jj);
Y.l(ii)         = target0(ii);
X.l(ii)         = target0(ii);
ERR1.l(ii)      = 0.0;
ERR2.l(macro)   = 0.0;
W1.l(ii,jwt)    = wbar1(ii,jwt);
W2.l(macro,jwt) = wbar2(macro,jwt);
DENTROPY.l      = 0;
GDPFC.l         = gdpfc0;
GDP.l           = gdp0;

* CORE EQUATIONS
Equation
   SAMEQ(i)        'row and column sum constraint'
   SAMMAKE(i,j)    'make SAM flows'
   ERROR1EQ(i)     'definition of error term 1'
   ERROR2EQ(macro) 'definition of error term 2'
   SUMW1(i)        'sum of weights 1'
   SUMW2(macro)    'sum of weights 2'
   ENTROPY         'entropy difference definition'
   ROWSUM(i)       'row target'
   COLSUM(j)       'column target'
   GDPFCDEF        'define GDP at factor cost'
   GDPDEF          'define GDP';

*CORE EQUATIONS
SAMEQ(ii)..
   Y(ii) =e= X(ii) + ERR1(ii);

SAMMAKE(ii,jj)$nonzero(ii,jj)..
   TSAM(ii,jj) =e= A(ii,jj)*(X(jj) + ERR1(jj));

ERROR1EQ(ii)..
   ERR1(ii) =e= sum(jwt, W1(ii,jwt)*vbar1(ii,jwt));

SUMW1(ii)..
   sum(jwt, W1(ii,jwt)) =e= 1;

ENTROPY..
   DENTROPY =e= sum((ii,jj)$nonzero(ii,jj), A(ii,jj)*(log(A(ii,jj) + epsilon)
                                          - log(Abar1(ii,jj) + epsilon)))
             +  sum((ii,jwt), W1(ii,jwt)*(log(W1(ii,jwt) + epsilon)
                               - log(wbar1(ii,jwt) + epsilon)))
             +  sum((macro,jwt), W2(macro,jwt)*(log(W2(macro,jwt) + epsilon)
                               - log(wbar2(macro,jwt) + epsilon)));

* Note that we exclude one rowsum equation since if all but one column
* and rowsum are equal, the last one must also be equal. Walras' Law
* at work.
ROWSUM(ii)$(not sameas(ii,"ROW"))..
   sum(jj, TSAM(ii,jj)) =e= Y(ii);

COLSUM(jj)..
   sum(ii, TSAM(ii,jj)) =e= (X(jj) + ERR1(jj));

*ADDITIONAL MACRO CONTROL-TOTAL EQUATIONS
GDPFCDEF..
   GDPFC =e= TSAM("fac","act") + ERR2("gdpfc2");

GDPDEF..
   GDP   =e= TSAM("fac","act") + TSAM("gre","act")
          -  TSAM("act","gre") + TSAM("gre","com") + ERR2("gdp2");

ERROR2EQ(macro)..
   ERR2(macro) =e= sum(jwt, W2(macro,jwt)*vbar2(macro,jwt));

SUMW2(macro)..
   sum(jwt, W2(macro,jwt)) =e= 1;

$onText
Define bounds for cell values

Defining equation SAMMAKE over non-zero elements of A ($Abar1(ii,jj))
guarantees that the zero structure of the original SAM is maintained
in the estimated SAM. Fixing all the zero entries to zero greatly
reduces the size of the estimation problem. If it is desired to
allow a zero entry to become nonzero in the estimated SAM, then
the condition $ABAR1(ii,jj) must be replaced with a new set that
does not include cells which are currently zero but may be nonzero.
$offText

A.lo(ii,jj)$nonzero(ii,jj)       = 0;
A.up(ii,jj)$nonzero(ii,jj)       = 1;
A.fx(ii,jj)$(not nonzero(ii,jj)) = 0;

TSAM.lo(ii,jj) = 0.0;
TSAM.up(ii,jj) = +inf;
TSAM.fx(ii,jj)$(not nonzero(ii,jj)) = 0;

* Upper and lower bounds on the error weights
W1.lo(ii,jwt)    = 0;
W1.up(ii,jwt)    = 1;
W2.lo(macro,jwt) = 0;
W2.up(macro,jwt) = 1;

* Set target column sums, X. If these are not fixed, then the column sum
* constraints will not be binding and the solution values or ERR1 will be 0.
X.fx(ii) = TARGET0(ii);

* Fix Macro aggregates.
* If these are not fixed, then the macro constraints will not be binding
* and the solution values of ERR2 will be zero.
GDP.fx   = GDP0;
GDPFC.fx = GDPFC0;

Model SAMENTROP / all /;

option iterLim = 5000, limRow = 0, limCol = 0, solPrint = on;

* SAMENTROP.optFile   = 1;
  SAMENTROP.holdFixed = 1;
* option nlp          = CONOPT;
* SAMENTROP.workSpace = 25.0;

solve SAMENTROP using nlp minimizing dentropy;