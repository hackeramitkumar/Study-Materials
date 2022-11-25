#include<unistd.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdio.h>
int main(){
	int fd=open("test.txt",O_RDONLY);
	printf("old fd = %d\n",fd);
	int fd1=dup(fd);
	printf("new fd (via dup)= %d\n",fd1);
	int fd2=dup2(fd,8);
	printf("new fd (via dup2) = %d\n",fd2);
}
