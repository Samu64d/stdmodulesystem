#
# string:slice/loop
#

# Check for index
scoreboard players operation ::in value = ::string index
scoreboard players operation ::in min = ::in index_start
scoreboard players operation ::in max = ::in index_end
scoreboard players remove ::in max 1
execute store result score ::string is_in_range run function math:is_in_range

# Remove character if is't not in range
execute if score ::string is_in_range = ::const FALSE run function string:slice/remove_current_char

scoreboard players remove ::string index 1
execute if score ::string index matches 0.. run function string:slice/loop

# Loop
