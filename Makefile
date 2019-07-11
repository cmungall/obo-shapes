SCHEMA = obo-basic.shex

test: t-t01

t-%: tests/%.ttl
	shexeval -A $< $(SCHEMA)
