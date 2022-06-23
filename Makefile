#====================================================
#ESTRUTURAS DE DADOS - 2022/01
#SISTEMAS DE INFORMAÇÃO
#ALAN AUGUSTO MARTINS CAMPOS
#TRABALHO PRÁTICO 01- POQUER
#====================================================
#IMPLEMENTAÇÃO DAS CLASSES E FUNCIONALIDADES REFERENTES AO JOGO DE PORQUER
#====================================================

CC = g++
CXXFLAGS = -g -Wall

# folders
INCLUDE_FOLDER = ./include/
BIN_FOLFER = ./bin/
OBJ_FOLDER = ./obj/
SRC_FOLDER = ./src/
OUTPUT_FOLDER = ./output/

# all sourcers, obs, and header files
MAIN = main
TARGET = main
SRC = $(wildcard $(SRC_FOLDER)*.cpp)
LOGDATE = $(shell date +"%d/%m/%Y as %kh:%Mm")
OBJ = $(patsubst $(SRC_FOLDER)%.cpp, $(OBJ_FOLDER)%.o, $(SRC))


$(OBJ_FOLDER)%.o: $(SRC_FOLDER)%.cpp
	$(CC) $(CXXFLAGS) -c $< -o $@ -I$(INCLUDE_FOLDER)


all: comp run

comp: $(OBJ) 
	$(CC) $(CXXFLAGS) -o $(BIN_FOLFER)$(TARGET) $(OBJ)
	
run:
	./bin/main

clean: 
	@rm -rf $(OBJ_FOLDER)* $(BIN_FOLFER)* $(TARGET)
	clear

git:
	git add .
	git commit -m "Atualizacao de $(LOGDATE)"
	git push
