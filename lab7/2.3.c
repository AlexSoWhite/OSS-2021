#include <stdio.h>
#include <unistd.h>

int main()
{
    	int pid = fork();

	int count;
	if (pid != 0)
	{
		for (int count = 0; count < 10; count++)
		{
    			fork();
		}
	}
	sleep(3);
	return 0;
}
