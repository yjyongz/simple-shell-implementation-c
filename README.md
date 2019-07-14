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

#### cd commands
<img src="https://bayes.la/wp-content/uploads/2019/07/cd_and_foge.gif"></img>

#### stdin and stdout IO redirection e.g < , > and >>
<img src="https://bayes.la/wp-content/uploads/2019/07/stdout_redirection.gif"></img>

#### stderr and stdout redirection e.g 2> and 2>>
<img src="https://bayes.la/wp-content/uploads/2019/07/stderr_redirection.gif"></img>

#### stderr and stdout combine redirection e.g > 2>&1 and 2> 1>&2
<img src="https://bayes.la/wp-content/uploads/2019/07/io_combine.gif"></img>

## Limitation:
1. jobs lists.
    - as of now, this shell cannot list background jobs that are running.
2. fg
    - fg does not work
