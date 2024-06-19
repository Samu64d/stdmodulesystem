#
# string:from_char_array/loop
#

# Get the n character value
scoreboard players operation ::in index = ::string string_index
function collections:array/get_index

# Concat string
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set from storage io: element
function string:concat

scoreboard players add ::string string_index 1
execute if score ::string string_index < ::string string_size run function string:from_char_array/loop

# Loop
