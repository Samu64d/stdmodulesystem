#
# string:to_char_array/loop
#

# Get the n character value
scoreboard players operation ::in index = ::string string_index
function string:get_char

# Append data
data modify storage io: element set from storage io: char
function collections:array/append

scoreboard players add ::string string_index 1
execute if score ::string string_index < ::string length run function string:to_char_array/loop

# Loop
