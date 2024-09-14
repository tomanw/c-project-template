# Makefile
COMPILER          = gcc
COMPILER_FLAGS    = -o
TARGET            = dist/build
INCLUDE           = include
SOURCE_FILES      = src/main.c

build: $(SOURCE_FILES)
	$(COMPILER) $(COMPILER_FLAGS) $(TARGET) $(SOURCE_FILES) -I$(INCLUDE) -I/usr/local/include

.PHONY: clean
clean:
	rm -f $(TARGET) *.o

.PHONY: generate
generate:
	make clean; bear -- make
