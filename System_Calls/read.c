#include<unistd.h>
int main(){
	char buffer[30];
	int n=read(0,buffer,30);
	write(1,buffer,n);
}
