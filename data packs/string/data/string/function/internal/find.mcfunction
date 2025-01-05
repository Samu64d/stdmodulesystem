#
# string:internal/find
#
# Return an array with the first index of all (or the first/last) occurence(s) of a substring inside a string
#> Scores
#  @reverse_search (in): boolean flag
#  @search_only_one (in): search only the first occurence
#> Storage
#  @string (in): the string
#  @search (in): the substring to search
#  @found_list (out): the found list
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: string"
function stdmodulesystem:stack/push

# Set flag
scoreboard players operation ::string found = ::const FALSE

# Create found array reference
function collections:array/new
data modify storage io: found_list set from storage io: array

# Parse strings

# String
function string:to_char_array
data modify storage string:volatile parsed_string set from storage io: array
execute store result score ::string string_size run function collections:array/get_size

# Search
data modify storage io: string set from storage io: search
function string:to_char_array
data modify storage string:volatile parsed_search_string set from storage io: array
execute store result score ::string search_string_size run function collections:array/get_size

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: string"
function stdmodulesystem:stack/pop

# Check for empty string
execute if score ::string string_size matches 0 run return run scoreboard players get ::string found

# Check for larger search string
execute if score ::string search_string_size > ::string string_size run return run scoreboard players get ::string found

# Check for reverse search
execute if score ::in reverse_search = ::const FALSE run function string:internal/find/loop_init
execute if score ::in reverse_search = ::const TRUE run function string:internal/find/loop_reverse_init

# Return data
return run scoreboard players get ::string found
