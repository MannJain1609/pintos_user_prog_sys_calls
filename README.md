
                                                  ARGUMENT PASSING
                                                  ================

**---- DATA STRUCTURES ----**
<br>
No new data structure is created for this phase.<br>


**---- ALGORITHMS ----**

#### Implementing argument parsing<br>
Earlier, the command line is read as the file name including the arguments. We need to split the file name with arguments. Thus, `strtok_r()` function is used to split the command line string.
<br>
The strtok_r() splits the argument string and we get each argument, which is pushed on the stack by the order aording to the stack structure below.
![image](https://user-images.githubusercontent.com/75989468/194738304-9fd14425-dea5-4d11-9792-12a703053721.png)

#### Arranging elememts of argv[] in right order<br>

We check the strings in the order of last to first, in which the last string will be the command and the first one will be the last argument. For example, in a string ‘run echo x’, the first element would be ‘x’, and ‘run’ would be the last argument.

#### Avoiding overflowing the stack page
In our design, overflowing will be detected as page fault exception. When overflowing occurs, exit(-1) will execute.

**---- RATIONALE ----**

#### Why does Pintos implement strtok_r() but not strtok()?***

Pintos implement strtok_r() because in strtok() the method internally stores the position where the last token was discovered for use in the subsequent call to strtok (). The issue with this is that it could lead to race condition. The last token stored by one thread could be used by another thread if two threads are calling strtok() at the same time. This would be erroneous, and it could even cause the kernel to crash. Thus, strtok_r() allowed for thread safe concurrent parsing.

#### In Pintos, the kernel separates commands into a executable name and arguments.  In Unix-like systems, the shell does this separation.  Identify at least two advantages of the Unix approach.

1. Parsing is not a concern for the kernel. Instead,  parsing and error checking will be handled by the shell before the kernel receives the command line. This saves kernel cost.

2. The Unix way of separation allow the system to check the filename and arguments are valid or
not.

                                      SYSTEM CALLS
                                      ============
                                      
**---- DATA STRUCTURES ----**

In threads/threads.h, added:
```
    struct thread *parent;              /* Which thread creates this one. */
    struct list children;               /* Threads that this one creates. */
    struct list_elem child_elem;        /* List element for list children. */
    int child_load_status;              /* Load status of its child*/
    int child_exit_status;              /* Exit status of its child*/ 
    struct list open_fd;                /* Fds the thread opens*/
    struct file *file;                  /* Executable file of this thread. */
    struct semaphore process_wait;      /* Determine whether thread should wait. */
```
<br>

#### File descriptors
Each file will be allocated to a unique descriptor, as a number. The fd is a non-negative integer with 0 and 1 reserved for standard input and standard output respectively. All other values can be used to allocate the file.

**---- ALGORITHMS ----**
#### Describe your code for reading and writing user data from the kernel.
Step 1: the buffer pointer range will be checked.
Step 2: see if the buffer pointer is doing reading operation or writing operation.
step 3: the descriptor of the thread will hold the lock when the file was being written or read. When the reading or writing operating stopped, the lock will be released. 

#### Suppose a system call causes a full page (4,096 bytes) of data to be copied from user space into the kernel.  What is the least and the greatest possible number of inspections of the page table (e.g. calls to pagedir_get_page()) that might result?  What about for a system call that only copies 2 bytes of data?  Is there room for improvement in these numbers, and how much?

The least number of inspection is 1, the greatest number is 2. The operation is the same for a system call that only copies 2 bytes of data.

#### Briefly describe your implementation of the "wait" system call and how it interacts with process termination.

The system call "wait" calls `process_wait` and wait until the chils process is terminated. When the child process is terminated, all resources that it hold will be released.

#### Any access to user program memory at a user-specified address can fail due to a bad pointer value.  Such accesses must cause the process to be terminated.  System calls are fraught with such accesses, e.g. a "write" system call requires reading the system call number from the user stack, then each of the call's three arguments, then an arbitrary amount of user memory, and any of these can fail at any point.  This poses a design and error-handling problem: how do you best avoid obscuring the primary function of code in a morass of error-handling?  Furthermore, when an error is detected, how do you ensure that all temporarily allocated resources (locks, buffers, etc.) are freed?  In a few paragraphs, describe the strategy or strategies you adopted for managing these issues.  Give an example.

Before accessing memory, we will check the buffer pointer to make sure all arguments of syscall are in the user memory, not in the kernel memory. All pointers with Null value or in the kernel memory will point to kernel to cause page fault.<br>
The reason for that is once the page fault occurs, sys_exit() will be called to exit.

**---- SYNCHRONIZATION ----**
#### The "exec" system call returns -1 if loading the new executable fails, so it cannot return before the new executable has completed loading.  How does your code ensure this?  How is the load success/failure status passed back to the thread that calls "exec"? 

We keep track of the child_status (loaded or not loaded) in a thread struct. The status will be updated when the status of child_thread changes. So after we find the pid, check the status if it is loaded or not. If not then exit with error (-1).

#### Consider parent process P with child process C.  How do you ensure proper synchronization and avoid race conditions when P calls wait(C) before C exits?  After C exits?  How do you ensure that all resources are freed in each case?  How about when P terminates without waiting, before C exits?  After C exits?  Are there any special cases?
When P waits for C, P will stop and wait for C to exit. When C exits its lock are released. <br>
If P calls wait after C exits, P will have no child to wait for so it won't wait.<br>
When P terminates before C exits, P kills all of its children including C. All of the children will be terminated and release their locks.<br>
When P terminates after C exits, C's locks should be released. 

**---- RATIONALE -----**
#### Why did you choose to implement access to user memory from the kernel in the way that you did?

It is easy to implement the validate arguments and status for error catching than to implement page fault memory handling.<br>
Whenever a pointer is invalid, it will be caught by the page fault interrupt handler and the syscall_exit will be called.

#### What advantages or disadvantages can you see to your design for file descriptors?

Since every file descriptor is unique for each process, it eliminates the need to account for race conditions. <br>
The cost might be a little bit high.

#### The default tid_t to pid_t mapping is the identity mapping. If you changed it, what advantages are there to your approach?
We used the default tid_t to pid_t mapping.

