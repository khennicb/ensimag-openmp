

all: fibo fibo_seq mandel mandel_seq

fibo: CFLAGS+= -O3 -fopenmp -std=gnu11
fibo: LDLIBS+= -lpthread
fibo: LDFLAGS+= -fopenmp
fibo: fibo.o

fibo_seq: CFLAGS= -O3 -std=gnu11
fibo_seq: fibo_seq.o

mandel: CFLAGS+= -O3 -fopenmp -std=gnu11
mandel: LDLIBS+= -lpthread
mandel: LDFLAGS+= -fopenmp
mandel: mandel.o

mandel_seq: CFLAGS= -O3 -std=gnu11
mandel_seq: mandel_seq.o

clean:
	rm -f *.o
