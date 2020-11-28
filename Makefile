CC   = g++
OPTS = -O0
DEBUG = -g

SRCDIR = ./src
INCDIR = ./inc
BINDIR = ./bin

SRCS = $(SRCDIR)/*.cpp

INCLUDE = $(addprefix -I,$(INCDIR))
CFLAGS = $(OPTS) $(INCLUDE) $(DEBUG)
LIBS = -lsfml-graphics -lsfml-window -lsfml-system

TARGET = $(BINDIR)/game

all: $(TARGET)

$(TARGET):
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LIBS)

clean:
	rm -f $(OBJS) $(BINDIR)/*

