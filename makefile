compiler=g++
flags=-Wall
executable=reverse

$(executable): main.o
	mkdir -f ./usr/bin/
	$(compiler) $(flags) main.o -o ./usr/bin/$(executable)
	rm -f main.o

main.o: main.cpp
	$(compiler) $(flags) -c main.cpp

clean:
	rm -f ./usr/bin/$(executable) main.o


