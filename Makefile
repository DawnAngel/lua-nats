test:
	tsc -f tests/*.lua

test-deps:
	luarocks install telescope

deps:
	luarocks install luasocket
	luarocks install lua-cjson
	luarocks install uuid

.PHONY: test test-deps deps
