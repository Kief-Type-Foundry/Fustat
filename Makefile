NAME = Fustat

.SECONDARY:
SHELL = bash
MAKEFLAGS := -sr
PYTHON := python3

SOURCEDIR = sources
GLYPHSFILE = ${SOURCEDIR}/${NAME}.glyphs
SCRIPTDIR = scripts
BUILDDIR = build
FONTSDIR = fonts
VARIABLEDIR = ${FONTSDIR}/variable
STATICDIR = ${FONTSDIR}/static
VENVDIR = venv

FMOPTS = --master-dir="{tmp}" --instance-dir="{tmp}"

ifneq (,$(findstring s,$(MAKEFLAGS)))
  FMOPTS += --verbose=WARNING
  QUITE = -q
  VERBOSE =
else
  QUITE =
  VERBOSE = --verbose
endif

FONTMAKE = ${PYTHON} -m fontmake

VERSION=$(shell git describe --tags --abbrev=0)
DIST=$(NAME)-$(VERSION)

export SOURCE_DATE_EPOCH ?= $(shell stat -c "%Y" ${GLYPHSFILE})

MASTERS = Light Regular Bold

INSTANCES = ${MASTERS} ExtraLight Medium ExtraBold
STATIC = $(INSTANCES:%=${STATICDIR}/${NAME}-%.ttf)
VARIABLE = ${VARIABLEDIR}/${NAME}[wght].ttf

all: ttf vf
vf: ${VARIABLE}
ttf: ${STATIC}

define copyfont
cp $(1) $(2);
$(foreach font,$(1),${PYTHON} ${SCRIPTDIR}/dist.py $(2)/$(notdir ${font}) ${VERSION} ${VERBOSE};)
endef

setup: requirements.txt
	echo "    Setting up Python virtual environment"
	${PYTHON} -m venv ${VENVDIR}
	${VENVDIR}/bin/pip install ${QUITE} -U pip
	${VENVDIR}/bin/pip install ${QUITE} -U wheel
	${VENVDIR}/bin/pip install ${QUITE} --no-deps -r $<

${NAME}-%.ttf: ${GLYPHSFILE}
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${FONTMAKE} ${FMOPTS} $< --output-path=$@ --flatten-components --output=ttf --interpolate=".* $(*F)"

${VARIABLE}: ${GLYPHSFILE}
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${FONTMAKE} ${FMOPTS} $< --output-path=$@ --flatten-components --output=variable

dist: ttf vf
	echo "    DIST    ${DIST}"
	rm -rf ${DIST}{,.zip}
	mkdir -p ${DIST}/${STATICDIR}
	mkdir -p ${DIST}/${VARIABLEDIR}
	$(call copyfont,${STATIC},${DIST}/${STATICDIR})
	$(call copyfont,${VARIABLE},${DIST}/${VARIABLEDIR})
	echo "    ZIP     ${DIST}.zip"
	zip -rq ${DIST}.zip ${DIST}
