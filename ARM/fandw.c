//Program to demonstrate fork() and wait()
//Child becomes zombie as parent is sleeping when child process exits
#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
int main()
{
    pid_t p1();
    int y=0;
    p1=fork();

if(p1>0)//parent process
{
    wait(NULL);
    y=y-1;
    printf("THis is parent .Process ID=%d,y=%d\n",getpid(),y);


}
else if(p1==0)//child process
{
    y=y+1;
    printf("This is child.Process Id = %d,Parent Process Id =%d,y=%d\n ",getpid(),y);
    exit(0);

}
else //fork failed
{
    printf("Fork creation failed !!!\n");
}
}
//OUTPUT:
//