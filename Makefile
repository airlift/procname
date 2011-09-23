CFLAGS=-Wall -Werror -fPIC -shared

TARGET=libprocname.so

.PHONY: all clean

all:
	gcc $(CFLAGS) -o $(TARGET) procname.c
	chmod 644 $(TARGET)

clean:
	rm -f $(TARGET)
