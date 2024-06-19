#
# string:internal/find/loop_reverse
#

# Check for equal characters

# Get main string character at the string index
scoreboard players operation ::in index = ::string string_index
data modify storage io: array set from storage string:volatile parsed_string
function collections:array/get_index
data modify storage io: string0 set from storage io: element

# Get search string character at the search string index
scoreboard players operation ::in index = ::string search_string_index
data modify storage io: array set from storage string:volatile parsed_search_string
function collections:array/get_index
data modify storage io: string1 set from storage io: element

# Check if the two characters are equal
execute store result score ::string success run function string:are_equal

# Characters are equal
execute if score ::string success = ::const TRUE run scoreboard players remove ::string search_string_index 1

# Characters aren't equal
execute if score ::string success = ::const FALSE run scoreboard players operation ::string search_string_index = ::string search_string_size
execute if score ::string success = ::const FALSE run scoreboard players remove ::string search_string_index 1

# Substring found
execute if score ::string search_string_index matches -1 run function string:internal/find/on_found_reverse

scoreboard players remove ::string string_index 1
execute if score ::string string_index matches 0.. run function string:internal/find/loop_reverse

# Loop
