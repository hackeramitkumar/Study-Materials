#include<unistd.h>
#include<stdio.h>
int main(){
	int n=write(1,"Hello\n",6);
	printf("No of chars written = %d\n",n);
}
