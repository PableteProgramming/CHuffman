CC= gcc
EXE_NAME= huffman.exe
SRC_NAME= funcs.c huffman.c

OBJ_NAME= $(patsubst %.c, %.o, $(SRC_NAME))

$(EXE_NAME): $(OBJ_NAME)
	@gcc -o $(EXE_NAME) $(OBJ_NAME)

$(OBJ_NAME): %.o: %.c
	@gcc -c -o $@ $<



run: $(EXE_NAME) execute

execute:
	@huffman.exe

cleanobj:
	del *.o

clean: cleanobj
	del $(EXE_NAME)
