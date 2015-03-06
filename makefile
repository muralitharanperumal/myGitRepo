CC=g++
CFLAGS=
CPPFLAGS= -I. -Wall --std=c++11
DEPS=
OBJS= Test1.o 
TARGET=test
RM=rm

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CPPFLAGS)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

.PHONY: clean

clean:
	$(RM) -f $(OBJS) $(TARGET)


