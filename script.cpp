#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void convertRowToColumn(const char *inputRow, char *outputColumn) {
    char *token;
    char inputCopy[100];
    strcpy(inputCopy, inputRow);

    // Chuyển hàng thành cột và thêm dấu phẩy
    token = strtok(inputCopy, " \t");
    while (token != NULL) {
        // Đưa số vào cột và thêm dấu phẩy
        strcat(outputColumn, token);
        strcat(outputColumn, ", ");
        
        token = strtok(NULL, " \t");
    }

    // Loại bỏ dấu phẩy cuối cùng
    if (strlen(outputColumn) > 0) {
        outputColumn[strlen(outputColumn) - 2] = '\0';
    }
}

int main() {
    const char *inputRow =  "";
    char outputColumn[100] = "";

    convertRowToColumn(inputRow, outputColumn);

    // Hiển thị kết quả
    printf("Output Column: %s\n", outputColumn);

    return 0;
}

