This tpmh0085.zip archive contains material relating to a GEMPACK program for
eliminating imbalances in any square SAM. Two TABLO programs are included:
* TESTSAM.TAB is purely diagnostic. It reads a SAM and computes differences
   between row and column totals
* SAMBAL.TAB adjusts a SAM to make row and column sums the same.

An example of an imbalanced SAM is included in the file SAM0.HAR [this was 
produced by randomly perturbing each cell of a balanced SAM obtained from IFPRI].

The SAMBAL program could also be used to balance other square SAMs that
are stored in a HAR file formatted like SAM0.HAR.

Assuming you have GEMPACK installed, you should be able to run TEST.BAT
from the DOS command line to run the following programs:

(a) TABLO is run to process both TESTSAM.TAB and SAMBAL.TAB to produce
     corresponding GSS/GST files which can be used by GEMSIM.

(b) TESTSAM is run (via GEMSIM) to compute [row-col] differences from the
     initial, imbalanced, SAM in SAM0.HAR. The differences are stored in
     TESTSAM0.HAR.

(c) SAMBAL (via GEMSIM) reads the original SAM from SAM0.HAR and produces a new
     balanced SAM in the update file SAM1.HAR. The command file SAMBAL.CMF is set
     up to (a) eliminate (row-col) differences, and (b) make gov col add to
     150000. The solution file SAMBAL.SL4 shows the difference between the old
     and new SAM.

(d) TESTSAM is run (via GEMSIM) to compute [row-col] differences from the
     final, balanced, SAM in SAM1.HAR. The differences are stored in
     TESTSAM1.HAR.

More explanation of the SAMBAL program may be found in the MSWord file 
SAMBAL.DOC.

This TPMH0085 archive is a REVISED VERSION of archive item TPMH0048 [Nov 2003].
For the revised version, SAMBAL.TAB has been converted to the "levels" GEMPACK 
syntax, because this makes it easier to impose additional constraints.


Mark Horridge
May 2008
email: Mark.Horridge@buseco.monash.edu.au
