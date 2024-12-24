---
layout: post
title: Vim Cheatsheet
date: 2024-11-30
categories: [post, vim, tools]
tags: [vim, editor, cheatsheet, neovim]
---

## Introduction
This article will serve as a markup for my notes learning processes and threads (again). Not all information will be displayed here. For example all the different forms of `fork()`. Only the information I am struggling with will be present.

## Fork
`fork()` is a syscall that spawns another Task in unix. After this call, the same code will be running twice. The return value hints the processes wether they are parent or child.

Return | Meaning
--|--
-1 | error when forking
0 | child process
1+ | parent process, ret value is child pid

## Wait

The `wait()` syscall is used to wait for a process. There are several ways of waiting for a process to finish.

Syscall | Purpose
--|--
`wait()` | wait for any child to finish (`-1` if no children exist)
`wait(int* stat_loc)` | wait for any child to die, but put its exit status into this integer
`waitpid(pid_t pid)` | wait for a specific child to finish
`while(wait(NULL) != -1) `| wait for all child processes to finish *1


## PID's

A Pid is the Process ID of a running process. (In actuallity you get the TGID Thread Group ID instead of the real PID, however as a programmer using the term PID works fine)

How do we obtain the PID of our running process? There are Syscalls for that

Syscall | Purpose
--|-- 
`getpid()`| get the PID(TGID) of the current process
`getppid()`| get the Parent-PID of the process

Note on the PPID: If the parent has terminated before the childs, another process will take over the role of the parent.(Either the parent shell or Systemd, depending on the operating system)


## IPC using Pipes

Function | Return Value | Parameters
--|--|--
`pipe()` | `0` if success, `-1` if fail | `int[2]`

`int fd[2];` contains two file descriptors that the pipe will use. `fd[0]` is the incoming messages, `fd[1]` is the outgoing messages

Common usage using pipes looks like this:

```c
int fd[2];
int rval = pipe(fd);
if(rval == -1){
    printf("Error creating pipe!");
    return 1;
}

int id = fork();
if(id == 0){
    close(fd[0]); // no reading in the child process, as we are sending from child to parent
    int x;
    printf("input a number: ");
    scanf("%d", &x);
    write(fd[1], &x, sizeof(int)); // write into pipe
    close(fd[1]); // close fd, indicating no further values are coming
} else{
    close(fd[1]); // we are receiving, so we can close the outgoing fd
    int y;
    read(fd[0], &y, sizeof(int)); // read from pipe
    printf("Child sent: %d\n", y);
}
```
 
Notes:

- Surrounding the `write()` and `read()` syscalls in an if to check for errors is useful
- All syscalls are in the `#include <unistd.h>`

## Resources

*1: [Calling Fork Multiple Times](https://www.youtube.com/watch?v=94URLRsjqMQ)