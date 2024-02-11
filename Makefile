NAME = Fustat

.SECONDARY:
SHELL = bash
MAKEFLAGS := -sr
PYTHON := python3

SOURCEDIR = sources
GLYPHSFILE = ${SOURCEDIR}/${NAME}.glyphspackage
SCRIPTDIR = scripts
BUILDDIR = build
FONTSDIR = fonts
DOCDIR = documentation
VARIABLEDIR = ${FONTSDIR}/variable
STATICDIR = ${FONTSDIR}/static
VENVDIR = venv

FMOPTS = --filter DecomposeTransformedComponentsFilter --flatten-components

ifneq (,$(findstring s,$(MAKEFLAGS)))
  FMOPTS += --verbose=WARNING
  QUITE = -q
  VERBOSE =
else
  QUITE =
  VERBOSE = --verbose
endif

VERSION=$(shell git describe --tags --abbrev=0)
DIST=$(NAME)-$(VERSION)

export SOURCE_DATE_EPOCH ?= $(shell stat -c "%Y" ${GLYPHSFILE})

INSTANCES = ExtraLight Light Regular Medium SemiBold Bold ExtraBold
STATIC = $(INSTANCES:%=${STATICDIR}/${NAME}-%.ttf)
DISTSTATIC = $(INSTANCES:%=${DIST}/${STATICDIR}/${NAME}-%.ttf)
VARIABLE = ${NAME}[wght].ttf
SVG = ${DOCDIR}/sample.svg
SAMPLE = "خط فسطاط"

all: ttf vf doc
vf: ${VARIABLEDIR}/${VARIABLE}
ttf: ${STATIC}
doc: ${SVG}

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

${BUILDDIR}/${NAME}.designspace: ${GLYPHSFILE}
	echo "    GEN     $(@F)"
	${PYTHON} ${SCRIPTDIR}/glyphs-to-ufo.py $< $(@D) ${SOURCEDIR}/GlyphData.xml

${NAME}-%.ttf: ${BUILDDIR}/${NAME}.designspace
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${PYTHON} -m fontmake ${FMOPTS} $< --output-path=$@ --output=ttf --interpolate=".* $(*F)"

${VARIABLEDIR}/${VARIABLE}: ${BUILDDIR}/${NAME}.designspace
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${PYTHON} -m fontmake ${FMOPTS} $< --output-path=$@ --output=variable

${SVG}: ${VARIABLEDIR}/${VARIABLE}
	echo "    SAMPLE  $(@F)"
	${PYTHON} ${SCRIPTDIR}/mksample.py -t ${SAMPLE} -o $@ $<

${DIST}/${STATICDIR}/${NAME}-%.ttf: ${STATICDIR}/${NAME}-%.ttf
	echo "    DIST    $(@F)"
	mkdir -p $(@D)
	${PYTHON} ${SCRIPTDIR}/dist.py $< $@ ${VERSION} ${VERBOSE}

${DIST}/${VARIABLEDIR}/${VARIABLE}: ${VARIABLEDIR}/${VARIABLE}
	echo "    DIST    $(@F)"
	mkdir -p $(@D)
	${PYTHON} ${SCRIPTDIR}/dist.py $< $@ ${VERSION} ${VERBOSE}

dist: ${DIST}/${VARIABLEDIR}/${VARIABLE} ${DISTSTATIC}
	echo "    DIST    ${DIST}"
	cp OFL.txt AUTHORS.txt CONTRIBUTORS.txt README.md ${DIST}
	echo "    ZIP     ${DIST}.zip"
	zip -rq ${DIST}.zip ${DIST}
