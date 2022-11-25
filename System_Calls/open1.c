#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/stat.h>
int main(){
	char buf[50];
	int fd=open("test.txt",O_RDONLY);
	int n= read(fd,buf,50);
	int fd2=open("target",O_CREAT|O_WRONLY,0642);
	write(fd2,buf,n);
}
