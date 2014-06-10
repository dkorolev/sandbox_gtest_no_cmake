all: build build/test
	./build/test

build:
	mkdir -p build

build/test: build/test.o
	g++ -o $@ $< /usr/src/gtest/libgtest.a /usr/src/gtest/libgtest_main.a -lpthread

build/%.o: %.cc
	g++ -o $@ -c $<

clean:
	rm -rf build
