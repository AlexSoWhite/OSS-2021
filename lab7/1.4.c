#include <stdio.h>

// env | wc -l

extern char **environ;
int main(int argc, char *argv[]) 
{
	char **p;
	int count = 0;
	for (p = environ; *p != NULL && count < atoi(argv[1]); p++, count++)
	{
		printf("%s\n", *p);
	}
}
