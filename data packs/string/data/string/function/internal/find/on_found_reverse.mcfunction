#
# string:internal/find/on_found_reverse
#

# Reset search string index
scoreboard players operation ::string search_string_index = ::string search_string_size
scoreboard players remove ::string search_string_index 1

# Append found index
data modify storage io: array set from storage io: found_list
execute store result storage io: element int 1.0 run scoreboard players get ::string string_index
function collections:array/append
data modify storage io: found_list set from storage io: array

# Check for only one occurence search
execute if score ::in search_only_one = ::const TRUE run scoreboard players set ::string string_index 1

# Update flag
scoreboard players operation ::string found = ::const TRUE
