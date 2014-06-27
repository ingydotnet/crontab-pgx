GRAMMAR = crontab.pgx
#export PERL5LIB=../pegex-pm/lib
COMPILE_COMMAND = perl compile.pl --to=
ALL = $(GRAMMAR).yaml $(GRAMMAR).json

all: $(ALL)

$(ALL): $(GRAMMAR) Makefile
	$(COMPILE_COMMAND)$(@:$<.%=%) $< > $@
