# CEdev project options

NAME = BJTCALC
DESCRIPTION = "BJT Circuit Calculator"
COMPRESSED = NO

CFLAGS = -Wall -Wextra -Oz
CXXFLAGS = -Wall -Wextra -Oz

CEDEV_CONFIG := $(shell command -v cedev-config 2>/dev/null)

ifneq ($(CEDEV_CONFIG),)
include $(shell cedev-config --makefile)
else ifneq ($(filter host-test,$(MAKECMDGOALS)),host-test)
$(error CEdev is not installed or cedev-config is not on PATH; see README.md)
endif

.PHONY: host-test

HOST_CC ?= /usr/bin/cc

host-test:
	$(HOST_CC) -std=c99 -Wall -Wextra -Werror -Isrc \
		src/bjt_math.c tests/test_bjt_math.c -lm -o tests/test_bjt_math
	./tests/test_bjt_math
	rm -f tests/test_bjt_math
