=================================================================================
                     Standard GTAP model version 7 (GTAPv7)                              
=================================================================================

Description: 
    The GTAPv7-JGEA.zip file is part of the supplementary files of the paper
    Erwin L. Corong, Thomas W. Hertel, Robert A. McDougall, Marinos E. Tsigas, 
    and Dominique van der Mensbrugghe. The Standard GTAP Model, Version 7. 
    Journal of Global Economic Analysis, [S.l.], v.2, n.1, p. 1-119, june 2017. 
    Available at:
    <https://jgea.org/resources/jgea/ojs/index.php/jgea/article/view/47> 
    or     
    http://dx.doi.org/10.21642/JGEA.020101AF.

    The zip file contains the GTAPv7 model codes and all the files needed to run 
    test simulations using two aggregated versions of GTAP Data Base version 9A.  

----------------
zip file summary
----------------
(A) Model-related (GEMPACK) files:
    (A1) GTAPv7.tab       - model codes
    (A2) GTAPv7.sti       - condensation file
    (A3) GTAPv7.axs       - auxilliary statement file
    (A4) GTAPv7.axt       - auxilliary table file    
    (A5) GTAPv7.exe       - model executable file
    (A6) GTAPv7-10x10.cmf - command (closure and shocks) file for 10x10x10 data 
    (A7) GTAPv7-9x10.cmf  - command (closure and shocks) file for 9x10x10 data
	
(B) List of data files (Aggregated GTAP 9A data with 2011 base year):
    (B1) Diagonal 'make' matrix (10 activities x 10 commodities x 10 regions) 
	     - Basedata10x10.har 
         - Sets-10x10.har
     	 - Default-10x10.prm
     (B2) Non-diagonal 'make' matrix (9 activities x 10 commodities x 10 Regions) 
     	- Basedata-9x10.har 
    	- Sets-9x10.har
    	- Default-9x10.prm

(C) Model simulation (DOS/batch) files
    (C1) RunGTAPv7-10x10.bat
    (C2) RunGTAPv7-9x10.bat

(D) Model compilation: 
    - CompileGTAPv7.bat (If needed, execute this file to compile the GTAPv7 
      model. Warning: Requires Intel or GFortran compiler and source code 
      GEMPACK)

-------------------
Running simulations
-------------------
(E) To run simulations:
    (E1) Open a cmf file (e.g., GTAPv7-10x10.cmf or GTAPv7-9x10.cmf)
    (E2) Activate a shock (e.g., Shock pfactwld = 5); 
    (E3) Save the cmf file
    (E4) Open a DOS Box 
         - In TABmate: click Programs, then select DOS command prompt
         - Then, in the DOS box, type: RunGTAPv7-10x10.bat or RunGTAPv7-9x10.bat 
    (E5) Verify (in the DOS box) that the simulation run has completed 
         without error, or look at the log file (e.g., GTAPv7-10x10.log or 
         GTAPv7-9x10.log)
    (E6) Open the results files
         - GTAPv7-10x10.sl4 or GTAPv7-9x10.sl4
         - WELVIEW-GTAPv7-10x10.har or WELVIEW-GTAPv7-9x10.har
