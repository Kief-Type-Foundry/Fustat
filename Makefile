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
DOCDIR = documentation
VARIABLEDIR = ${FONTSDIR}/variable
STATICDIR = ${FONTSDIR}/static
VENVDIR = venv

FMOPTS =

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
VARIABLE = ${VARIABLEDIR}/${NAME}[wght].ttf
SVG = ${DOCDIR}/sample.svg
SAMPLE = "خط فسطاط"

all: ttf vf doc
vf: ${VARIABLE}
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
	${PYTHON} -m glyphsLib glyphs2ufo \
		--minimal \
		--propagate-anchors \
		--write-public-skip-export-glyphs \
		--generate-GDEF \
		--glyph-data=${SOURCEDIR}/GlyphData.xml \
		--output-dir=$(@D) \
		$<


${NAME}-%.ttf: ${BUILDDIR}/${NAME}.designspace
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${PYTHON} -m fontmake ${FMOPTS} $< --output-path=$@ --flatten-components --output=ttf --interpolate=".* $(*F)"

${VARIABLE}: ${BUILDDIR}/${NAME}.designspace
	echo "    MAKE    $(@F)"
	mkdir -p $(@D)
	${PYTHON} -m fontmake ${FMOPTS} $< --output-path=$@ --flatten-components --output=variable

${SVG}: ${VARIABLE}
	echo "    SAMPLE  $(@F)"
	${PYTHON} ${SCRIPTDIR}/mksample.py -t ${SAMPLE} -o $@ $<

dist: ttf vf
	echo "    DIST    ${DIST}"
	rm -rf ${DIST}{,.zip}
	mkdir -p ${DIST}/${STATICDIR}
	mkdir -p ${DIST}/${VARIABLEDIR}
	$(call copyfont,${STATIC},${DIST}/${STATICDIR})
	$(call copyfont,${VARIABLE},${DIST}/${VARIABLEDIR})
	echo "    ZIP     ${DIST}.zip"
	zip -rq ${DIST}.zip ${DIST}
