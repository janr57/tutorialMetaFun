# Makefile for tutorialLuaMetaFun
#

FILES = ctx-entorno.tex \
	ctx-portada.tex \
	ctx-indice.tex \
	prefacio/ctx-prefacio.tex \
	texto/ctx-texto.tex


tutorialLuaMetaFun.pdf: ctx-tutorialLuaMetaFun.tex $(FILES)
	context $<

all: tutorialLuaMetaFun.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.log *.tuc *.aux *~ auto texto/*.~ texto/auto

