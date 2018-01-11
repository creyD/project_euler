#include <iostream>

#define SIZE 201

int mainOld() {
	long double matrix[SIZE][SIZE];
	
	for (int i = 0; i < SIZE; ++i) {
		matrix[i][0] = 1;
		matrix[0][i] = 1;
	}

	for (int i = 1; i < SIZE; ++i) {
		for (int j = 1; j < SIZE; ++j) {
			matrix[i][j] = matrix[i - 1][j] + matrix[i][j - 1];
		}
	}
	
	int bla;
	std::cout << matrix[SIZE - 1][SIZE - 1] << std::endl;
	std::cin >> bla;

	return 0;
}