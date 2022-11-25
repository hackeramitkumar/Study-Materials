#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
int main(){
	char buffer[10];
	int fd=open("test.txt",O_RDWR);
	read(fd,buffer,10);
	write(1,buffer,10);
	lseek(fd,10,SEEK_CUR);
	read(fd,buffer,10);
	write(1,buffer,10);
}
