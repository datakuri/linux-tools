#!/bin/bash

function e_test {
  if test $1 -gt 0
  then
    echo "failed"
  elif [ $1 == 0 ]
  then
    echo "success"
  fi
}

echo "hello just test"
grep -ioH db.* testdir/*.txt
e_test $?
