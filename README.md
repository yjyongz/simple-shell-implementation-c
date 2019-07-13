[![Build Status](https://travis-ci.com/yjyongz/simple-shell-implementation-c.svg?branch=master)](https://travis-ci.com/yjyongz/simple-shell-implementation-c)
[![Coverage Status](https://coveralls.io/repos/github/yjyongz/simple-shell-implementation-c/badge.svg)](https://coveralls.io/github/yjyongz/simple-shell-implementation-c)
### Simple C Shell Implementation Page

## Supported lists:
1. internal command: cd and fg
2. history support e.g: !! to execute the most recent command.
3. multiple pipes support
4. redirect IO support e.g: > >> 2> 2>> 2>&1 1>&2 <
5. support background running e.g: ampersand support (&)

## How To Run It
<img src="https://bayes.la/wp-content/uploads/2019/07/make_and_run-1.gif"></img>

## Limitation:
1. jobs lists.
    - as of now, this shell cannot list background jobs that are running.
2. fg
    - fg **ONLY** support without arguments. e.g fg [without any job number]
