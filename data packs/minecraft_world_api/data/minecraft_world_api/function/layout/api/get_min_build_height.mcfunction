#
# minecraft_world_api:layout/api/get_min_build_height
#
# Get the manimum build height at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  minimum build height

# Get the dimension settings descriptor from the dimension settings map
execute unless function minecraft_world_api:layout/dimension_settings_map/get_by_dimension unless function minecraft_world_api:layout/internal/calc_dimension_settings run return 0

# Get minimum build height
return run function minecraft_world_api:layout/dimension_settings_descriptor/get_min_build_height
