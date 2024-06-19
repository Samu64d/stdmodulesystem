#
# string:internal/find/check_for_equal
#

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
