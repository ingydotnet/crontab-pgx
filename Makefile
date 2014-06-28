GRAMMAR = $(shell echo *.pgx)
export PERL5LIB=$(shell env | grep PERL5LIB):../pegex-pm/lib
COMPILE_COMMAND = perl compile.pl --to=
ALL = $(GRAMMAR).yaml $(GRAMMAR).json

all: $(ALL)

$(ALL): $(GRAMMAR) Makefile
	$(COMPILE_COMMAND)$(shell perl -e '$$_="$@";s/.*\.//;print') $(shell perl -e '$$_="$@";s/\.\w+$$//;print') > $@

clean purge:
	rm -f *.yaml *.json
