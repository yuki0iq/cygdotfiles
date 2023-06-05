run: all
	./main.exe
debug: all
	gdb main.exe
all: main.o
	g++ main.o -o main.exe -g -O0
main.o: main.cpp
	g++ -DONPC main.cpp -c -O0 -g -std=c++1y
clean:
	rm main.o main.exe
rebuild: clean all
