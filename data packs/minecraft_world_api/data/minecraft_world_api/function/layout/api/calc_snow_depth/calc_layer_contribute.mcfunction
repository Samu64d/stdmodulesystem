#
# minecraft_world_api:layout/api/calc_snow_depth/calc_layer_contribute
#

# Get layers value
function minecraft_world_api:layout/api/calc_snow_depth/calc_layer_depth

# Calculate contribute
execute store result score ::minecraft_world_api::layout layer_depth run data get storage io: number 1.0
scoreboard players operation ::minecraft_world_api::layout layer_depth *= ::int 2
scoreboard players operation ::minecraft_world_api::layout snow_depth += ::minecraft_world_api::layout layer_depth
