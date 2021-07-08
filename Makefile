RMD_FILES := $(wildcard *.Rmd)
HTML_FILES := $(RMD_FILES:.Rmd=.html)

all: html

R_OPTS=--no-save --no-restore --no-init-file --no-site-file

html: $(HTML_FILES)

%.html: %.Rmd
	R ${R_OPTS} -e "rmarkdown::render('$<')"

.PHONY: all html
