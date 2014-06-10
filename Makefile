all: build/test
	./build/test

build/test: build/test.o
	g++ -o $@ $< /usr/src/gtest/libgtest.a /usr/src/gtest/libgtest_main.a -lpthread

build/test.o: test.cc
	g++ -o $@ -c $<

clean:
	rm -f build/*
