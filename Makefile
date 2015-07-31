default: zpaq

zpaq: zpaq.cpp libzpaq.cpp libzpaq.h
	g++ -O3 -Wall -march=native -Dunix zpaq.cpp libzpaq.cpp -pthread -o zpaq
zpaq-afl: zpaq.cpp libzpaq.cpp libzpaq.h
	afl-g++ -O0 -Wall -g3 -march=native -Dunix -DAFL_FUZZ zpaq.cpp libzpaq.cpp -pthread -o zpaq-afl
