#include <stdio.h>
#include <unistd.h>

int main()
{
    	int pid = fork();
    	if (pid == 0)
	{
        	printf("pid дочернего процесса: %d, pid родительского процесса:%d\n", getpid(), getppid());
	}
	sleep(3);
	return 0;
}
