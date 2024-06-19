#
# string:replace/remove_current_char
#

# Remove character from parsed string array
scoreboard players operation ::in index = ::string string_index
data modify storage io: array set from storage string:volatile parsed_string
function collections:array/remove_index
data modify storage string:volatile parsed_string set from storage io: array

# Update search string index
scoreboard players remove ::string search_string_index 1
