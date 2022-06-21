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
LOGPATH = logs
SRC = $(wildcard $(SRC_FOLDER)*.cpp)
LOGFILE = $(LOGPATH)/$(shell date --iso=seconds)
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
	git commit -m "commit de Alan Augusto: $(LOGFILE)"
	git push
