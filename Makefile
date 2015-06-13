zpaq: zpaq.cpp libzpaq.cpp libzpaq.h
	afl-g++ -O0 -Wall -g3 -march=native -Dunix zpaq.cpp libzpaq.cpp -pthread -o zpaq
