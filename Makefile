# Firgure name #################################################################
FNAME=f6
# Initialization script name ###################################################
INAME=init
# Figure script name ###################################################
SNAME=f6
# Compiler #####################################################################
RRR=Rscript
# Script files #################################################################
SCRIPTS= $(wildcard *.R)
# TARGETS ######################################################################

.PHONY: default all init clean compile

default: clean compile

all: init clean compile

init:
	$(RRR) $(INAME).R

clean:
	rm -f *.pdf

compile: $(FNAME).pdf

$(FNAME).pdf: $(SNAME).R $(INAME.R)
	$(RRR) $(SNAME).R $@
