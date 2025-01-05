#
# minecraft_world_api:layout/api/can_build
#
# Check if a block position if inside the world area that can be builded
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Get block position height
execute store result score ::in value run function minecraft_world_api:block_pos/get_y

# Get the dimension settings descriptor from the dimension settings map
execute unless function minecraft_world_api:layout/dimension_settings_map/get_by_dimension unless function minecraft_world_api:layout/internal/calc_dimension_settings run return run scoreboard players get ::const FALSE

# Get minimum build height
execute store result score ::in min run function minecraft_world_api:layout/dimension_settings_descriptor/get_min_build_height

# Get maximum build height
execute store result score ::in max run function minecraft_world_api:layout/dimension_settings_descriptor/get_max_build_height

# Check for range
return run function math:is_in_range
