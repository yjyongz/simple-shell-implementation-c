[![Build Status](https://travis-ci.com/yjyongz/simple-shell-implementation-c.svg?branch=master)](https://travis-ci.com/yjyongz/simple-shell-implementation-c)
[![codecov](https://codecov.io/gh/yjyongz/simple-shell-implementation-c/branch/master/graph/badge.svg)](https://codecov.io/gh/yjyongz/simple-shell-implementation-c)

### Simple C Shell Implementation Page

## Supported lists:
1. internal command: cd
2. history support e.g: !! to execute the most recent command.
3. multiple pipes support
4. redirect IO support e.g: > >> 2> 2>> 2>&1 1>&2 <
5. support background running e.g: ampersand support (&)

## How To Run It
<img src="https://bayes.la/wp-content/uploads/2019/07/make_and_run-1.gif"></img>

#### cd commands and background commands
<img src="https://bayes.la/wp-content/uploads/2019/07/cd_and_foge.gif"></img>

#### stdin and stdout IO redirection e.g < , > and >>
<img src="https://bayes.la/wp-content/uploads/2019/07/stdout_redirection.gif"></img>

#### stderr and stdout redirection e.g 2> and 2>>
<img src="https://bayes.la/wp-content/uploads/2019/07/stderr_redirection.gif"></img>

#### stderr and stdout combine redirection e.g > 2>&1 and 2> 1>&2
<img src="https://bayes.la/wp-content/uploads/2019/07/io_combine.gif"></img>

#### pipeline
<img src="https://bayes.la/wp-content/uploads/2019/07/pipeline.gif"></img>

## Design Consideration
#### key data strucutre
char** args[160]; 

why 160? you can have your own number. make sure it is big enough to cover most of shell commands.


e.g: cat /usr/share/dict/words | grep main | grep rem | grep der | grep ip > output2.txt


args[0][0] = cat

args[0][1] = /usr/share/dict/words

args[0][2] = NULL

args[1][0] = grep

args[1][1] = main

args[1][2] = NULL

args[2][0] = grep

args[2][1] = rem

args[2][2] = NULL

args[3][0] = grep

args[3][1] = der

args[3][2] = NULL

args[4][0] = grep

args[4][1] = ip

args[4][2] = >

args[4][3] = output2.txt

args[4][4] = NULL


#### pipeline
I adopted a recursive approach to deal with multiple pipelines.

invoke: func(0, 4)


```
func(index_of_commands, total_commands):

    if index_of_commands == total_commands: return
    
    pid = fork()
    
    if pid == 0:
    
        execvp();
        
    else:
    
        func(index_of_commands+1, total_commands)
        
        waitpid();
```


#### history

it's a circular buffer

char *history[MAX_LENGTH]; >>> number of history to remember

int index = 0 >>> init index

index = (index + 1) % MAX_LENGTH >>>move to next item



#### signal handler

you need to register SIGINT with shell process. 

and then we need to send minus pid value (which will send a SIGTERM to all the child processes in the same process group)

kill(-pid, SIGTERM)



## Limitation:
1. jobs lists.
    - as of now, this shell cannot list background jobs that are running.
2. fg
    - fg does not work
