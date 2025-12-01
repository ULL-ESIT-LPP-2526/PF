# lambda { |params| ... }
#
# ->params {...}
#
# ->(params) {...}
#

proc1 = -> arg {puts "In proc1 with #{arg}"}
proc2 = -> arg1, arg2 {puts "In proc2 with #{arg1} and #{arg2}"}
proc3 = ->(arg1, arg2) {puts "In proc3 with #{arg1} and #{arg2}"}

proc1.call 1
proc2.call 1, 2
proc3.call "uno", "dos"
