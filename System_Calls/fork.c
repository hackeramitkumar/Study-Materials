#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
int main(){
	pid_t q=fork();
	if(q<0)
		printf("error\n");
	else if(q==0){
		printf("child having pid %d\n",getpid());
		printf("My parent's pid is %d\n",getppid());
	}
	else{
		printf("Parent having pid %d\n",getpid());
		printf("My Child's pid is %d\n",q);
	}
}
