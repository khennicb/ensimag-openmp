

all: fibo fibo_seq mandel madel_seq

fibo: CFLAGS+= -O3 -fopenmp
fibo: LDLISS+= -lopenmp -lpthread
fibo: fibo.o

fibo_seq: CFLAGS= -O3
fibo_seq: fibo_seq.o
