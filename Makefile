

all: fibo fibo_seq mandel mandel_seq

fibo: CFLAGS+= -O3 -fopenmp -std=gnu11
fibo: LDLISS+= -lopenmp -lpthread
fibo: fibo.o

fibo_seq: CFLAGS= -O3 -std=gnu11
fibo_seq: fibo_seq.o

mandel: CFLAGS+= -O3 -fopenmp -std=gnu11
mandel: LDLISS+= -lopenmp -lpthread
mandel: mandel.o

mandel_seq: CFLAGS= -O3 -std=gnu11
mandel_seq: mandel_seq.o

clean:
	rm -f *.o
