#
# string:common/character_map_loop
#

# Get character
scoreboard players operation ::in index = ::string index
function collections:array/get_index

# Check for key character
data modify storage io: key set from storage io: element
execute if function collections:map/has_key run function string:common/map_character

# Update index
scoreboard players add ::string index 1

execute if score ::string index < ::string string_size run function string:common/character_map_loop

# Loop
