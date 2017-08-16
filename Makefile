all: qt ping pong

moc_%.cpp: %.h
	moc $< -o $@

qt: qt5.o
	g++ -Wall -O2 -fPIC -o qt qt5.o `pkg-config --libs Qt5DBus`

ping: ping.o
	g++ -Wall -O2 -fPIC -o ping ping.o `pkg-config --libs Qt5DBus`

pong: pong.o moc_pong.o
	g++ -Wall -O2 -fPIC -o pong pong.o moc_pong.o `pkg-config --libs Qt5DBus`

moc_pong.o: moc_pong.cpp
	g++ -Wall -O2 -c `pkg-config --cflags Qt5DBus` -o moc_pong.o moc_pong.cpp

qt5.o: qt5.cpp
	g++ -Wall -O2 -c `pkg-config --cflags Qt5DBus` -o qt5.o qt5.cpp

ping.o: ping.cpp
	g++ -Wall -O2 -c `pkg-config --cflags Qt5DBus` -o ping.o ping.cpp

pong.o: pong.cpp
	g++ -Wall -O2 -c `pkg-config --cflags Qt5DBus` -o pong.o pong.cpp

clean:
	rm -rf qt ping pong moc_*.cpp *.o
