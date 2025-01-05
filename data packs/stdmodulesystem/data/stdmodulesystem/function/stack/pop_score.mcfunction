#
# stdmodulesystem:stack/pop_score
#
# Pop a score from the stack
#> Storage
#  @stack_score (out): the score
#> Return void

execute store result score ::out stack_score run data get storage stdmodulesystem:volatile stack.stack[-1][0] 1.0
data remove storage stdmodulesystem:volatile stack.stack[-1]
