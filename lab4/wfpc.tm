// paren matcher

checkoff "6004.csail.mit.edu/currentsemester/6004assignment.doit" "Lab #4" 1103641864

symbols ( ) 0 1

tape test1 (
result1 test1 0

tape test2 )
result1 test2 0

tape test3 ( )
result1 test3 1

tape test4 ) (
result1 test4 0

tape test5 ( ) ( ) ( ( ( ) ) ( ) ) ) ( )
result1 test5 0

tape test6 ( ) ( ( ( ) ( ( ( ) ) ( ) ) )
result1 test6 0

tape test7 ( ) ( ( ) ( ( ( ) ) ( ) ) )
result1 test7 1

// define additional symbols, your states and actions here

symbols #
states s0 s1 s2

action s0 ( s0 ( l 
action s0 # s0 # l
action s0 ) s1 # -
action s0 - s2 - r

action s1 ) s1 ) r
action s1 # s1 # r
action s1 ( s0 # -
action s1 - *halt* 0 -

action s2 # s2 # r
action s2 ( *halt* 0 -
action s2 - *halt* 1 -

