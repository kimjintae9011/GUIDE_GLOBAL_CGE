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
*NONZERO(ii,jj)$(Abar1(ii,jj)) = yes;
NONZERO(ii,jj)$(Abar1(ii,jj) > 1e-10) = yes;

* Initializing Parameters after accounting for negative values
*   Note that target column sums are being set to average of initial
*   row and column sums. Initial column sums or other values
*   could have been used instead, depending on knowledge of data quality
*   and any other prior information.
target0(ii) = (sam(ii,"total") + sam("total",ii))/2;
gdpfc0 = T1("fac","act");
gdp0   = T1("fac","act") + T1("gre","act") - T1("act","gre") + T1("gre","com");

display gdpfc0, gdp0;

Variable
   A(ii,jj)      'post SAM coefficient matrix'
   TSAM(ii,jj)   'post matrix of SAM transactions'
   Y(ii)         'row sum of SAM'
   X(ii)         'column sum of SAM'
   DENTROPY      'entropy difference (objective)'
   GDPFC         'GDP at factor cost'
   GDP           'GDP at market prices';

* INITIALIZE VARIABLES
A.l(ii,jj)      = Abar1(ii,jj);
TSAM.l(ii,jj)   = T1(ii,jj);
Y.l(ii)         = target0(ii);
X.l(ii)         = target0(ii);
DENTROPY.l      = 0;
GDPFC.l         = gdpfc0;
GDP.l           = gdp0;

* CORE EQUATIONS
Equation
   SAMEQ(i)        'row and column sum constraint'
   SAMMAKE(i,j)    'make SAM flows'
   ENTROPY         'entropy difference definition'
   ROWSUM(i)       'row target'
   COLSUM(j)       'column target'
   GDPFCDEF        'define GDP at factor cost'
   GDPDEF          'define GDP';
   
*CORE EQUATIONS
SAMEQ(ii)..
   Y(ii) =e= X(ii) ;

SAMMAKE(ii,jj)$nonzero(ii,jj)..
   TSAM(ii,jj) =e= A(ii,jj)*X(jj);

ENTROPY..
   DENTROPY =e= sum((ii,jj)$nonzero(ii,jj), A(ii,jj)*(log(A(ii,jj) + epsilon)
                                          - log(Abar1(ii,jj) + epsilon))) ;

* Note that we exclude one rowsum equation since if all but one column
* and rowsum are equal, the last one must also be equal. Walras' Law
* at work.
ROWSUM(ii)$(not sameas(ii,"ROW"))..
   sum(jj, TSAM(ii,jj)) =e= Y(ii);

COLSUM(jj)..
   sum(ii, TSAM(ii,jj)) =e= X(jj);

*ADDITIONAL MACRO CONTROL-TOTAL EQUATIONS
GDPFCDEF..
   GDPFC =e= TSAM("fac","act") ;

GDPDEF..
   GDP   =e= TSAM("fac","act") + TSAM("gre","act")
          -  TSAM("act","gre") + TSAM("gre","com") ;
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

Alias (macro,a_macro), (ii,a_ii), (jj,a_jj);

Variable
   m_SAMEQ(i)        'multiplier for row and column sum constraint'
   m_SAMMAKE(i,j)    'multiplier for make SAM flows constraint'
   m_ROWSUM(i)       'multiplier for row target constraint'
   m_COLSUM(j)       'multiplier for column target constraint'
   m_GDPFCDEF        'multiplier for GDP at factor cost constraint'
   m_GDPDEF          'multiplier for GDP at market pricesconstraint';

* EQUATIONS FOR THE FIRST ORDER CONDITIONS
* FOR MINIMIZING THE OBJECTIVE FUNCTION
Equation
   d_A(a_ii,a_jj)      'FOC wrt the choice variable A'
   d_TSAM(a_ii,a_jj)   'FOC wrt the variable TSAM'
   d_Y(a_ii)           'FOC wrt the variable Y'
   d_X(a_ii)           'FOC wrt the variable X'
   d_GDPFC             'FOC wrt the macro control variable GDPFC'
   d_GDP               'FOC wrt the macro control variable GDP';

* EQUATION: FOC wrt the choice variable A
d_A(a_ii,a_jj)..
       ((log(a(a_ii,a_jj) + epsilon) - log(abar1(a_ii,a_jj)  + epsilon))
       $(nonzero(a_ii,a_jj)) + a(a_ii,a_jj)*(1/(a(a_ii,a_jj) + epsilon))
       $(nonzero(a_ii,a_jj)))
    -  sum((ii,jj)$(nonzero(ii,jj)), m_sammake(ii,jj)*(-(1$((sameas
       (a_ii,ii) and sameas(a_jj,jj))))*(x(jj))))
   =e= 0;

* EQUATION: FOC wrt the variable TSAM
d_TSAM(a_ii,a_jj)..
    -  m_gdpfcdef*(-(1$((sameas(a_ii,"fac") and sameas(a_jj,"act")))))
    -  m_colsum(a_jj)
    -  m_gdpdef*(-(1$((sameas(a_ii,"fac") and sameas(a_jj,"act")))
       +1$((sameas(a_ii,"gre") and sameas(a_jj,"act"))) - (1$((sameas
       (a_ii,"act") and sameas(a_jj,"gre"))))+1$((sameas(a_ii,"gre")
       and sameas(a_jj,"com")))))
    -  m_rowsum(a_ii)$((not sameas(a_ii,"ROW")))
    -  m_sammake(a_ii,a_jj)$(nonzero(a_ii,a_jj))
   =e= 0;

* EQUATION: FOC wrt the variable Y
d_Y(a_ii)..
    -  m_sameq(a_ii)
    -  sum((ii)$((not sameas(ii,"ROW"))),m_rowsum(ii)*(-(1$((sameas(a_ii,ii))))))
   =e= 0;

* EQUATION FOC wrt the variable X
d_X(a_ii)..
    -  sum(jj, m_colsum(jj)*(-(1$((sameas(a_ii,jj))))))
    -  sum(ii, m_sameq(ii) *(-(1$((sameas(a_ii,ii))))))
    -  sum((ii,jj)$(nonzero(ii,jj)), m_sammake(ii,jj)*(-a(ii,jj)*(1$((sameas(a_ii,jj))))))
   =e= 0;

* EQUATION: FOC wrt the macro control variable GDPFC
d_GDPFC..
   - m_gdpfcdef =e= 0;

* EQUATION: FOC wrt the macro control variable GDP
d_GDP..
   - m_gdpdef =e= 0;

* DEFINE MODEL
* In GAMS the "." is used for pairing the complementarity variables
* and equations for the MCP solver. For example the equation
* defined by d_A is complementary to the variable A and must be
* defined over the same sets.
Model m_SAMENTROP / d_A.A, d_TSAM.TSAM
                    d_Y.Y
                    d_X.X
                    d_GDPFC.GDPFC
                    d_GDP.GDP
                    GDPFCDEF.m_GDPFCDEF
                    COLSUM.m_COLSUM
                    SAMEQ.m_SAMEQ
                    GDPDEF.m_GDPDEF
                    ROWSUM.m_ROWSUM
                    SAMMAKE.m_SAMMAKE /;

* SOLVE MODEL
* Shock the NLP solution
A.l(ii,jj) = 0.9*A.l(ii,jj);

solve m_SAMENTROP using mcp;

execute_unload "SAM_BAL" ;

$exit

* Parameters for reporting results
Parameter
   Macsam1(i,j)  'assigned new balanced SAM flows from CE'
   Macsam2(i,j)  'balanced SAM flows from entropy diff x scalesam'
   SEM           'squared error measure'
   percent1(i,j) 'percent change of new SAM from original SAM'
   PosUnbal(i,j) 'positive unbalanced SAM'
   PosBalan(i,j) 'positive balanced SAM'
   Diffrnce(i,j) 'differnce btw original SAM and final SAM in values'
   NormEntrop    'normalized entropy a measure of total uncertainty';

macsam1(ii,jj)          = TSAM.l(ii,jj);
macsam1("total",jj)     = sum(ii, macsam1(ii,jj));
macsam1(ii,"total")     = sum(jj, macsam1(ii,jj));
macsam2(i,j)            = macsam1(i,j)*scalesam;
SEM                     = sum((ii,jj), sqr(A.L(ii,jj) - Abar1(ii,jj)))/sqr(card(ii));
percent1(i,j)$(T1(i,j)) = 100*(macsam1(i,j) - T1(i,j))/T1(i,j);
PosUnbal(i,j)           = T1(i,j) * scalesam;
PosBalan(i,j)           = macsam2(i,j);
Diffrnce(i,j)           = PosBalan(i,j) - PosUnbal(i,j);
NormEntrop              = sum((ii,jj)$(Abar1(ii,jj)), A.l(ii,jj)*log(A.l(ii,jj)))
                        / sum((ii,jj)$(Abar1(ii,jj)), Abar1(ii,jj)*log(Abar1(ii,jj)));

display macsam1, macsam2, percent1, sem, dentropy.l, PosUnbal, PosBalan, NormEntrop, Diffrnce;

* Return negative flows to initial cell position
macsam1(ii,jj)      = macsam1(ii,jj) + redsam(ii,jj);
macsam1("total",jj) = sum(ii, macsam1(ii,jj));
macsam1(ii,"total") = sum(jj, macsam1(ii,jj));
macsam2(i,j)        = macsam1(i,j)*scalesam;
gdp00               = macsam1("fac","act") + macsam1("gre","act")
                    - macsam1("act","gre") + macsam1("gre","com");

display macsam1, macsam2, gdp0, gdp00, gdp.l, gdpfc0, gdpfc.l;

Parameter ANEW(i,j);

* print some stuff
ANEW("total",jj)  = sum(ii, A.l(ii,jj));
ANEW(ii,"total")  = sum(jj, A.l(ii,jj));
ABAR1("total",jj) = sum(ii, ABAR1(ii,jj));
ABAR1(ii,"total") = sum(jj, ABAR1(ii,jj));

display ANEW, ABAR1;


* Use the following code to specify that the column sums are known
* exactly. The errors are thus fixed to zero and two equations are
* dropped from the estimation procedure. The computational gains are
* that the constraints are all linear and the estimation problem is
* considerably smaller.

