#
# string:replace/insert_current_char
#

# Get character from parsed replace string
scoreboard players operation ::in index = ::string replace_string_index
data modify storage io: array set from storage string:volatile parsed_replace_string
function collections:array/get_index

# Check for string array size
scoreboard players operation ::in index = ::string string_index
data modify storage io: array set from storage string:volatile parsed_string
execute store result score ::string temp0 run function collections:array/get_size
execute if score ::in index <= ::string temp0 run function collections:array/insert_index
execute if score ::in index > ::string temp0 run function collections:array/append
data modify storage string:volatile parsed_string set from storage io: array

# Update replace string index
scoreboard players add ::string replace_string_index 1
