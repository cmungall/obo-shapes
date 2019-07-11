SCHEMA = obo-basic.shex

test: pass-01 fail-01

# expected passes
pass-%: tests/pass%.ttl
	shexeval -A $< $(SCHEMA)

# expected fails
fail-%: tests/fail%.ttl
	shexeval -A $< $(SCHEMA) && exit 1 || echo FAILED AS EXPECTED
