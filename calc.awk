#!/usr/bin/awk -f


##
# Returns results of Math expression
# @license AGPL-3.0
# @authors S0AndS0 (GitHub), JJoao (StackExchange)
function calc(expression) {
  gsub("inf", "(2 ** 1024)", expression)
  cmd = "awk \"BEGIN { printf(" expression "); }\""
  system(sprintf(cmd))
}


{
  print calc($0)
}
