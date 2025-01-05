#
# minecraft_world_api:block/utils/spread_through_path
#
# Spread a block type in a world area through a random path an place it only at the end of the path or at
# every path mode. Every next path node position is selected within an area with relative boundaries to the
# current path node position
#> Scores
#  @attempts_limit (in): the max number of attempts before stop the process
#  @every_node (in): boolean flag
#  @area_min_x (in): the area min x position offset
#  @area_max_x (in): the area max x position offset
#  @area_min_y (in): the area min y position offset
#  @area_max_y (in): the area max y position offset
#  @area_min_z (in): the area min z position offset
#  @area_max_z (in): the area max z position offset
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the starting block position
#  @callback (in): the callback function
#  @name (in): the block name
#> Return data
#  number of placed blocks

# Setup values
scoreboard players set ::minecraft_world_api::block::utils spread_count 0
scoreboard players set ::minecraft_world_api::block::utils spread_attempts 0

# Start loop
function minecraft_world_api:block/utils/spread_through_path/loop

# Return data
return run scoreboard players get ::minecraft_world_api::block::utils spread_count
