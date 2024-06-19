#
# stdmodulesystem:stack/push_score
#
# Push a score inside the stack
#> Storage
#  @stack_score (in): the score
#> Return void

data modify storage stdmodulesystem:volatile stack.temp_element set value []
execute store result storage stdmodulesystem:volatile stack.temp_element2 int 1.0 run scoreboard players get ::in stack_score
data modify storage stdmodulesystem:volatile stack.temp_element append from storage stdmodulesystem:volatile stack.temp_element2
data modify storage stdmodulesystem:volatile stack.stack append from storage stdmodulesystem:volatile stack.temp_element
