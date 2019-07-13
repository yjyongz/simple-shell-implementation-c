### Simple C Shell Implementation Page

## Supported lists:
1. internal command: cd and fg
2. history support e.g: !! to execute the most recent command.
3. multiple pipes support
4. redirect IO support e.g: > >> 2> 2>> 2>&1 1>&2 <
5. support background running e.g: ampersand support (&)

## How To Run It
![alt text](https://terminalizer.com/view/7d98c5c21408 "make and run")

## Limitation:
1. jobs lists.
    - as of now, this shell cannot list background jobs that are running.
2. fg
    - fg **ONLY** support without arguments. e.g fg [without any job number]
