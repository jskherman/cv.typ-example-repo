.PHONY: setup update cv watch all

# Installation and Setup
setup:
	git init && git submodule init && git submodule add https://github.com/jskherman/cv.typ template && git submodule update --recursive

update:
	git pull --recurse-submodules && git submodule update --recursive && git pull


# Typst commands
cv:
	typst compile --font-path ./fonts --root . cv.typ docs/cv.pdf
	
watch:
	typst watch --font-path ./fonts --root . cv.typ docs/cv.pdf

TYP_FILES = $(wildcard *.typ)

%.compiled: %.typ
	typst compile --font-path ./fonts --root . $< docs/$(notdir $(basename $<)).pdf

all: $(TYP_FILES:.typ=.compiled)
