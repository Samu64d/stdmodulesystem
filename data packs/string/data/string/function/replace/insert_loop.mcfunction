#
# string:replace/insert_loop
#

# Get first found list element
scoreboard players set ::in index 0
data modify storage io: array set from storage string:volatile found_list
function collections:array/get_index

# Check for index
execute store result score ::string temp0 run data get storage io: element 1.0
scoreboard players operation ::string temp0 += ::string accumulated_places
scoreboard players operation ::in value = ::string string_index
scoreboard players operation ::in min = ::string temp0
scoreboard players operation ::string temp0 += ::string replace_string_size
scoreboard players remove ::string temp0 1
scoreboard players operation ::in max = ::string temp0
execute store result score ::string is_in_range run function math:is_in_range

# Insert character if it's in range
execute if score ::string is_in_range = ::const TRUE run function string:replace/insert_current_char

# Remove element from found list
execute if score ::string replace_string_index = ::string replace_string_size run function string:replace/remove_first_found

# Update index
scoreboard players add ::string string_index 1

data modify storage io: array set from storage string:volatile found_list
execute store result score ::string found_list_size run function collections:array/get_size
execute if score ::string found_list_size matches 1.. run function string:replace/insert_loop

# Loop
