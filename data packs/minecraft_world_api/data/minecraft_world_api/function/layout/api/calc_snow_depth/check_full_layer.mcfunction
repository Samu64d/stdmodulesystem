#
# minecraft_world_api:layout/api/calc_snow_depth/check_full_layer
#

# Get layers value
function minecraft_world_api:layout/api/calc_snow_depth/calc_layer_depth

# Calculate contribute
execute store result score ::minecraft_world_api::layout layer_depth run data get storage io: number 1.0
execute if score ::minecraft_world_api::layout layer_depth matches 8 run scoreboard players operation ::inout match_success = ::const TRUE
