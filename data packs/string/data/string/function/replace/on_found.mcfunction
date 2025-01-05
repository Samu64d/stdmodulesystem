#
# string:replace/on_found
#

# Parse strings

# String
function string:to_char_array
data modify storage string:volatile parsed_string set from storage io: array
execute store result score ::string string_size run function collections:array/get_size

# Search
data modify storage io: string set from storage io: search
execute store result score ::string search_string_size run function string:get_length

# Replace
data modify storage io: string set from storage io: replace
function string:to_char_array
data modify storage string:volatile parsed_replace_string set from storage io: array
execute store result score ::string replace_string_size run function collections:array/get_size

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage string:volatile found_list"
function stdmodulesystem:stack/push

# Remove loop
scoreboard players operation ::string string_index = ::string string_size
scoreboard players remove ::string string_index 1
scoreboard players operation ::string search_string_index = ::string search_string_size
function string:replace/remove_loop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage string:volatile found_list"
function stdmodulesystem:stack/pop

# Insert loop
scoreboard players set ::string string_index 0
scoreboard players set ::string replace_string_index 0
scoreboard players set ::string accumulated_places 0
function string:replace/insert_loop

# Parse char array into string
data modify storage io: array set from storage string:volatile parsed_string
function string:from_char_array
