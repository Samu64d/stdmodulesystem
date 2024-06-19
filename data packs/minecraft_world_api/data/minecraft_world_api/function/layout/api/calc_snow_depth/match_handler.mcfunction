#
# minecraft_world_api:layout/api/calc_snow_depth/match_handler
#

# Check if the block is a snow layer
data modify storage io: name set value "minecraft:snow"
execute if function minecraft_world_api:block/api/is_at_pos run function minecraft_world_api:layout/api/calc_snow_depth/check_full_layer

# Check if the block is a snow block
data modify storage io: name set value "minecraft:snow_block"
execute if function minecraft_world_api:block/api/is_at_pos run scoreboard players operation ::inout match_success = ::const TRUE
