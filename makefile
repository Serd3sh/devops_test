compiler=g++
flags=-Wall
executable=reverse

$(executable): main.o
	$(compiler) $(flags) main.o -o $(executable)
	rm -f main.o

main.o: main.cpp
	$(compiler) $(flags) -c main.cpp

clean:
	rm -f $(executable) main.o


