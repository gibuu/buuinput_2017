####################################################################
This directory contains input cross sections for gamma N -> pi pi N. 
####################################################################

The files and directories include the following informations:
 * gamp-npip0.dat    -- Xsection for gamma p -> n pi^+ pi^0   (1st column: E_photon [Gev], 2nd : sigma [mb])
 * gamn-npi00.dat    -- Xsection for gamma n -> n pi^0 pi^0            "
 * gamp-ppi00.dat    -- Xsection for gamma p -> p pi^0 pi^0            " 
 * gamn-ppim0.dat    -- Xsection for gamma n -> p pi^- pi^0            "
 * gamp-ppipm.dat    -- Xsection for gamma p -> p pi^+ pi^-            "
 * gamn-npipm.dat    -- Xsection for gamma n -> n pi^+ pi^-            "
 * gam2pi_max.dat    -- Necessary input for module EventGenerator_TwoPi (Maxima of Amplitudes)

Experimental data is stored in the following directory:
 * dataSets -- Experimental data files 

The following directories contain old data sets which have been used for Oliver Buss' thesis, for his diploma, for 
Martin Effenberger's thesis or Pascal Mühlich's thesis:
 * inputSets/oliverThesisInput 
 * inputSets/oliverInput 
 * inputSets/effeInput 
 * inputSets/pascalInput


Type "gnuplot plotXsections.gp" to get a plot of the actual input files. 

