#include <stdio.h>

int countDigits(int number) {
    int count = 0;
    while (number != 0) {
        number /= 10;
        count++;
    }
    return count;
}

int main() {
    int array[] = {12, 4, 7, 56, 3, 9, 15, 8};
    int size = sizeof(array) / sizeof(array[0]);
    int oneDigitCount = 0;
    int i = 0;

    while (i < size) {
        if (countDigits(array[i]) == 1) {
            oneDigitCount++;
        }
        i++;
    }

    printf("Count of one-digit numbers in the array: %d\n", oneDigitCount);

    return 0;
}