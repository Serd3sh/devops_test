compiler=g++
flags=-Wall
executable=reverse

$(executable): main.o
	$(compiler) $(flags) main.o -o $(executable)

main.o: main.cpp
	$(compiler) $(flags) -c main.cpp

clean:
	rm -f $(executable) main.o


