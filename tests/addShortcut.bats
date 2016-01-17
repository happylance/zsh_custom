#!/usr/bin/env bats 
@test "no arguments prints usage" {
  run ./addShortcut.sh
  [ $status -eq 2 ]
  [ $(expr "${lines[0]}" : 'usage: ./addShortcut.sh \[alias\] \["command"\]') -ne 0 ]
  [ ${#lines[@]} -eq 2 ]
  [ "${lines[0]}" = "usage: ./addShortcut.sh [alias] [\"command\"]" ] 
#  echo "${lines[@]}" > ~/bats && echo "usage: ./addShortcut.sh [alias] [\"command\"]" >> ~/bats
}

@test "missing the second argumet prints usage" {
  run ./addShortcut.sh test
  [ $status -eq 2 ]
  [ $(expr "${lines[0]}" : 'usage: .*') -ne 0 ]
}
  
