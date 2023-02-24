INCLUDES= -I ./include
LIBRARIES= -L lib -l SDL2-2.0.0
FLAGS= -g -Wall

COMPILER= gcc

OBJECTS=./build/chip8memory.o ./build/chip8stack.o ./build/chip8keyboard.o ./build/chip8.o ./build/chip8screen.o

all: ${OBJECTS}
	${COMPILER} ${FLAGS} ${INCLUDES} ${LIBRARIES} ./src/main.c ${OBJECTS} -o ./bin/main 

./build/chip8memory.o:src/chip8memory.c
	${COMPILER} ${FLAGS} ${INCLUDES} ./src/chip8memory.c -c -o ./build/chip8memory.o 

./build/chip8stack.o:src/chip8stack.c
	${COMPILER} ${FLAGS} ${INCLUDES} ./src/chip8stack.c -c -o ./build/chip8stack.o 

./build/chip8keyboard.o:src/chip8keyboard.c
	${COMPILER} ${FLAGS} ${INCLUDES} ./src/chip8keyboard.c -c -o ./build/chip8keyboard.o 

./build/chip8.o:src/chip8.c
	${COMPILER} ${FLAGS} ${INCLUDES} ./src/chip8.c -c -o ./build/chip8.o 

./build/chip8screen.o:src/chip8screen.c
	${COMPILER} ${FLAGS} ${INCLUDES} ./src/chip8screen.c -c -o ./build/chip8screen.o 

clean:
	rm -rf build/*
# windows
# del build\* 