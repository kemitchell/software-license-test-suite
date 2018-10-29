LTJ=node_modules/.bin/lamos-to-json

all: TESTS.md CHECKLIST.md

CHECKLIST.md: tests.json list
	./list > $@

TESTS.md: tests.json format
	./format > $@

.INTERMEDIATE: tests.json

tests.json: tests.lamos | $(LTJ)
	$(LTJ) < $< > $@
