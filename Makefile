######################################################### -*- Makefile -*-
# Makefile for the BUU input. 
# Meant to be used for unpacking and preparing input files
#########################################################
all: 

clean:
	@rm */*.out
	@rm inMediumWidth/*.dat
	@rm ./baryon/*.??


#######################################################################
#######################################################################
# Input for special runs, which is usually not needed
#######################################################################
#######################################################################



# Input tables for David Kalok's baryon self energies
./baryon/033.34 : baryon/baryonWidth.tgz
	tar -xzm -C baryon  -f baryon/baryonWidth.tgz

