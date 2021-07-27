# Firgure name #################################################################
FIGURE=f6
# Figure script name ###################################################
SOURCE=f6
# Compiler #####################################################################
PPP=python3
# TARGETS ######################################################################

.PHONY: default all init clean compile

default: clean compile

all: init clean compile

init:
	pip3 install numpy
	pip3 install matplotlib

clean:
	rm -f *.pdf

compile: $(FIGURE).pdf

$(FIGURE).pdf: $(SOURCE).py
	$(PPP) $(SOURCE).py $@
