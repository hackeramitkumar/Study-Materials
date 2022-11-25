# System Calls

**Note:** Manual page for any System call in terminal can be accessed by:
```BASH
	man 2 <system_call>
```

## write System Call
* Header file: unistd.h
* Syntax:
```BASH
    write(fd,text,count);
```
* It returns the number of bytes written.

* Some standard file descriptor values:

    | File Descriptor | Reference |
    | --------------- | ----------|
    |   0             | stdin     |
    |   1             | stdout    |
    |   2             | stderr    |

## read System Call
* Header file: unistd.h
* Syntax:
```BASH
    read(fd,bufferToStore,size);
```
* It returns the number of bytes read.


## open System Call
* Header files: ```sys/types.h```, ```sys/stat.h```, ```fcntl.h```
* To open a file already created:
```BASH
    int fd = open(filename,mode);
```
* To create a new file and open:
```
  int fd = open(filename,O_CREAT|modes,permissions);
```
* Some modes:
    * O_RDONLY
    * O_WRONLY
    * O_APPEND
    * O_RDWR


## lseek system call
* Header files: ```sys/types.h```, ```unistd.h```
* used to reposition read/write offset (by default the read/write pointer is at start of the file)
* syntax:
```
    lseek(fd,offset,whence)
     fd: file-descriptor
     offset: how much to position
     whence: from where to specify the position
```

* Different values of whence are as :
    * SEEK_SET: from start
    * SEEK_CUR: from current location
    * SEEK_END: from end of file


## dup, dup2 System Call

* Header files: ```unistd.h```
* to duplicate the file descriptors
* Syntax:
```BASH
    dup(oldfd);
```
* **dup2** duplicates the file descriptors (here we give newfd manually, we don't want system to generate it automatically.)
* Syntax:
```BASH
    dup2(oldfd,newfd);
```
**Note: ** If ```newfd``` is already used by some other file, that file will be closed, and ```newfd``` is allocated to
this particular file.

* On  success, these system calls return the new file descriptor.  On error, -1 is returned, and errno is set appropriately.

## fork system call
* Header files: ```unistd.h```,```sys/types.h```
* used to create a child process
* Syntax
```BASH
    fork();
```
* The  child  process  and the parent process run in separate memory spaces.
* On  success, the PID of the child process is returned in the parent, and 0 is returned in the child. On failure, -1 is returned in  the  parent, no child process is created.

## wait, waitpid system call
* The  **wait()** system call suspends execution of the calling thread until one of its children changes state.
* Syntax:
```BASH
    wait(&wstatus);
```
* The **waitpid()** system call suspends execution of the calling thread until a child specified by pid argument has changed state.
* Syntax:
```BASH
    waitpid(pid,&wstatus,options);
```
**Orphan Process:** process without parent process.

**Zombie process:** child has terminated but parent has not cleared its entry.

## exec system calls
* Its manual is in section 3: 
```man 3 exec```
* The  **exec()**  family of functions replaces the current process image with a new process image. (Basically execute a file)
* execl syntax:
```BASH
    execl(pathname, args, options);
e.g.-
    execl("/bin/ls","ls","-l",NULL);
```
**Note:** l stands for list of arguments.

* Similarly we have **execv**. *v* stands for vector of arguments.

* The  exec()  functions  return  only if an error has occurred.  The return value is -1.
* **execlp** takes the *path* variables
into account. So we can run any file, which is added to path, directly without specifying their full paths.
* **Note: ** *l* or *v* is important with exec while *p* and *e* are optional.





