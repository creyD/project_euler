#include <iostream>
#include <vector>
#include <queue>
#include <chrono>

// trigger to solve Problem 67, it solves Problem 18 for anything else
#define solve67 false
#define measureTime false

#if solve67
	#define SIZE 100
	#define DATA {} //gelöscht, unnötige Datenverschwendung
#else
	#define SIZE 15
	#define DATA { 75, 95, 64, 17, 47, 82, 18, 35, 87, 10, 20, 4, 82, 47, 65, 19, 1, 23, 75, 3, 34, 88, 2, 77, 73, 7, 63, 67, 99, 65, 4, 28, 6, 16, 70, 92, 41, 41, 26, 56, 83, 40, 80, 70, 33, 41, 48, 72, 33, 47, 32, 37, 16, 94, 29, 53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14, 70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57, 91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48, 63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31, 4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23 }
#endif

struct Node {
	int value;
	int depth;
	Node* left;
	Node* right;
};

template<class T>
T readValue() {
	T value;
	std::cin >> value;
	return value;
}

int data[] = DATA;
int pointer = 0;

template<>
int readValue() {
	return data[pointer++];
}

int main() {
#if measureTime
	std::chrono::high_resolution_clock::time_point start = std::chrono::high_resolution_clock::now();
#endif

	std::vector<Node*> nodes;
	for (int i = 0; i < SIZE; ++i) {
		for (int j = 0; j <= i; ++j) {
			Node* n = new Node();
			n->value = readValue<int>();
			n->depth = i + 1;
			nodes.push_back(n);
		}
	}

	unsigned int nodeCount = 0;

	while (nodeCount < nodes.size()) {
		Node* node = nodes[nodeCount];
		if (nodeCount + node->depth < nodes.size()) {
			node->left = nodes[nodeCount + node->depth];
		}
		if (nodeCount + node->depth + 1 < nodes.size()) {
			node->right = nodes[nodeCount + node->depth + 1];

		}
		nodeCount++;
	}

	int* distance = new int[nodes.size()];
	distance[0] = nodes[0]->value;
	for (unsigned int i = 0; i < nodes.size(); ++i) {
		Node* n = nodes[i];

		unsigned int lId = i + n->depth;
		unsigned int rId = i + n->depth + 1;

		if (lId < nodes.size()) {
			int lDist = distance[i] + n->left->value;

			if (lDist > distance[lId])
				distance[lId] = lDist;
		}
		if (rId < nodes.size()) {
			int rDist = distance[i] + n->right->value;

			if (rDist > distance[rId])
				distance[rId] = rDist;
		}
	}

	int max = 0;
	for (unsigned int i = 0; i < nodes.size(); ++i)
		if (distance[i] > max)
			max = distance[i];

	std::cout << max << std::endl;

#if measureTime
	using namespace std::chrono;
	std::chrono::high_resolution_clock::time_point end = std::chrono::high_resolution_clock::now();
	
	duration<double> time_span = duration_cast<duration<double>>(end - start);
	std::cout << time_span.count() << std::endl;
#endif

	readValue<char>(); // prevent console from closing
}