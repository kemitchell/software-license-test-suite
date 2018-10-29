LTJ=node_modules/.bin/lamos-to-json

TESTS.md: tests.json format
	./format > $@

tests.json: tests.lamos | $(LTJ)
	$(LTJ) < $< > $@
