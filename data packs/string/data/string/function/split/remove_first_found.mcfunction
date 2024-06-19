#
# string:split/remove_first_found
#

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::string string_index
function stdmodulesystem:stack/push_score

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::string string_size
function stdmodulesystem:stack/push_score

# Parse char array into string
data modify storage io: array set from storage string:volatile parsed_substring
function string:from_char_array

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::string string_size = ::out stack_score

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::string string_index = ::out stack_score

# Check for padding substring
scoreboard players operation ::string append_substring = ::const TRUE
scoreboard players operation ::string temp0 = ::string delimiter_string_index
scoreboard players remove ::string temp0 1
execute if score ::string string_index = ::string temp0 run scoreboard players operation ::string append_substring = ::const FALSE
execute if score ::string string_index = ::string string_size unless function string:get_length run scoreboard players operation ::string append_substring = ::const FALSE

# Append substring
execute if score ::string append_substring = ::const TRUE run function string:split/append_substring

# Clear substring
function collections:array/new
data modify storage string:volatile parsed_substring set from storage io: array

# Update found list
scoreboard players set ::in index 0
data modify storage io: array set from storage string:volatile found_list
function collections:array/remove_index
data modify storage string:volatile found_list set from storage io: array

# Reset search string index
scoreboard players set ::string delimiter_string_index 0
