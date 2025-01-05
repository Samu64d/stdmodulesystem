#
# string:internal/pad
#
# Pads at the start or at the end a string with another string until the string reaches the given length
#> Scores
#  @length (in): the string size
#  @from_the_end (in): boolean flag
#> Storage
#  @string (inout): the string
#  @pad (in): the pad string
#> Return void

scoreboard players operation ::string pad_size = ::in length

# Get string length
execute store result score ::string length run function string:get_length
scoreboard players operation ::string pad_size -= ::string length

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: string"
function stdmodulesystem:stack/push

# Get pad length
data modify storage io: string set from storage io: pad
execute store result score ::string length run function string:get_length

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: string"
function stdmodulesystem:stack/pop

execute if score ::string length matches 1.. if score ::string pad_size matches 1.. run function string:internal/pad/loop_init
