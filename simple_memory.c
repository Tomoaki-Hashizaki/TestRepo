/*
 * simple_memory.c
 *
 *  Created on: Jul 16, 2019
 *      Author: Tomoaki Hashizaki
 */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *args[])
{
	int i, j = 0;

	printf("About how many MB do you want to consume? \n");
	scanf("%d", &j);

	printf("Starting memory test..\n");
	getchar();

	while (i < 1024 * j) {
		malloc(sizeof(char) * 1024);
		i++;
	}

	printf("Press any key to finish memory test.\n");
	getchar();

    return 0;
}
