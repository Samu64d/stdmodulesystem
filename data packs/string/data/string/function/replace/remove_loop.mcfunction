#
# string:replace/remove_loop
#

# Get last found list element
data modify storage io: array set from storage string:volatile found_list
scoreboard players set ::in index -1
function collections:array/get_index

# Check for index
execute store result score ::string temp0 run data get storage io: element 1.0
scoreboard players operation ::in value = ::string string_index
scoreboard players operation ::in min = ::string temp0
scoreboard players operation ::string temp0 += ::string search_string_size
scoreboard players remove ::string temp0 1
scoreboard players operation ::in max = ::string temp0
execute store result score ::string is_in_range run function math:is_in_range

# Remove character if it's in range
execute if score ::string is_in_range = ::const TRUE run function string:replace/remove_current_char

# Remove element from found list
execute if score ::string search_string_index matches ..0 run function string:replace/remove_last_found

# Update index
scoreboard players remove ::string string_index 1

execute if score ::string string_index matches 0.. run function string:replace/remove_loop

# Loop
