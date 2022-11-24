# Makefiles 
* They are used to compile several files together automatically.
* Compiles only those files which are updated.

### Comments Syntax

Same as bash:
```
	# This is a comment.
```

### Variables

Declare them at the start of the file:
e.g. -
``` CC = gcc
	FLAGS = -c
```

We can use them as
```
	$(CC)
	$(FLAGS)
```

### Special Symbols:

* $< signifies first file in dependency chain
* $@ signifies last file in dependency chain
e.g. 
```
	program: main.o head.o func.o
		gcc $<
```

### Dependency Chain:
Instead of manually writing the same build command for each target. We can write:
```
	%.o: %.c
		$(CC) $(CFLAGS) $<
```
* %.o: %.c indicates that for every .c file compile and use its .o file.

Then write the dependency chain as:
```
	main.o: main.cpp functions.h
	function1.o: function1.cpp functions.h
	function2.o: function2.cpp functions.h
```
### Shell Commands in makefiles:
Just write @ before each command like:
```
	main.o: main.c function.h
		@echo "Compiling main.c"
		gcc -c main.c
```

## Conditional expressions:
e.g.-
```
	check:
	ifeq ($(USE_C), 1)
		gcc -o test test.c
	else
		javac test.java
	endif
```
Here if USE_C=1 is passed as command line argument then if part is executed.




