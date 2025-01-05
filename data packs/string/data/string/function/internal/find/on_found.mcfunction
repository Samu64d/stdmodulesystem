#
# string:internal/find/on_found
#

# Reset search string index
scoreboard players set ::string search_string_index 0

# Append found index
data modify storage io: array set from storage io: found_list
scoreboard players operation ::string temp0 = ::string string_index
scoreboard players operation ::string temp0 -= ::string search_string_size
scoreboard players add ::string temp0 1
execute store result storage io: element int 1.0 run scoreboard players get ::string temp0
function collections:array/append
data modify storage io: found_list set from storage io: array

# Check for only one occurence search
execute if score ::in search_only_one = ::const TRUE run scoreboard players operation ::string string_index = ::string string_size

# Update flag
scoreboard players operation ::string found = ::const TRUE
