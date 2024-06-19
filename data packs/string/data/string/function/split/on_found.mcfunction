#
# string:split/on_found
#

# Parse strings

# String
function string:to_char_array
data modify storage string:volatile parsed_string set from storage io: array
execute store result score ::string string_size run function collections:array/get_size

# Delimiter
data modify storage io: string set from storage io: delimiter
execute store result score ::string delimiter_string_size run function string:get_length

# Substring
function collections:array/new
data modify storage string:volatile parsed_substring set from storage io: array

# Start loop
scoreboard players set ::string string_index 0
scoreboard players set ::string delimiter_string_index 0
function string:split/loop
function string:split/remove_first_found
