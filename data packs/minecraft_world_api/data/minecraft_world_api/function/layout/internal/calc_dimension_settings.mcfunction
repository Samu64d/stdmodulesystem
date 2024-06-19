#
# minecraft_world_api:layout/internal/calc_dimension_settings
#

# Check for loaded position
execute unless function minecraft_world_api:loading/is_loaded run return run scoreboard players get ::const FALSE

# Calculate min build height
execute store result score ::in min_build_height run function minecraft_world_api:layout/internal/calc_min_build_height

# Calculate max build height
execute store result score ::in max_build_height run function minecraft_world_api:layout/internal/calc_max_build_height

# Create a new dimension settings descriptor
function minecraft_world_api:layout/dimension_settings_descriptor/new

# Set the dimension settings descriptor at the dimension settings map
function minecraft_world_api:layout/dimension_settings_map/set

# Return data
return run scoreboard players get ::const TRUE
