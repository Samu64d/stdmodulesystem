#
# minecraft_world_api:layout/api/is_abow_ground
#
# Check if a position is above the ground
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Get surface level
execute store result score ::minecraft_world_api::layout y0 run function minecraft_world_api:layout/heightmap/get_world_surface_level

# Get block position level
execute store result score ::minecraft_world_api::layout y1 run function minecraft_world_api:block_pos/get_y

# Return data
return run execute if score ::minecraft_world_api::layout y0 < ::minecraft_world_api::layout y1
