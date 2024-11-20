# 定义使用的编译器
CC = g++

# 定义存放头文件的目录
HEAD_DIR = head
# 定义存放编译后目标文件的目录
OUT_DIR=out

# 定义所有需要编译的 .c 文件
C_FILES = $(HEAD_DIR)/math.cpp $(HEAD_DIR)/linklist.cpp
# 定义所有编译后生成的 .o 文件
OBJ_FILES = $(OUT_DIR)/math.o $(OUT_DIR)/linklist.o

# 最终的目标程序，依赖于 main.o 和其他模块的 .o 文件
main: $(OUT_DIR)/main.o $(OBJ_FILES)
	$(CC) -o main $(OUT_DIR)/main.o $(OBJ_FILES)

# 编译 main.c 文件生成 main.o 文件
$(OUT_DIR)/main.o: main.cpp
	$(CC) -c -o $@ $<

# 使用模式规则编译头目录下的 .c 文件到目标目录的 .o 文件
$(OUT_DIR)/%.o: $(HEAD_DIR)/%.cpp
	$(CC) -c -o $@ $<

# 清理规则，用于删除所有编译生成的文件
clean:
	rm -rf $(OUT_DIR)/* main