#
# minecraft_world_api:layout/dimension_settings_descriptor/new
#
# Create a new dimension settings descriptor
#> Scores
#  @min_build_height (in): the minimum build height
#  @max_build_height (in): the maximum build height
#> Storage
#  @dimension_settings_descriptor (out): the dimension settings descriptor
#> Return void

# Create object
data modify storage io: dimension_settings_descriptor set value {dimension: "minecraft:overworld", min_build_height: 0, max_build_height: 0}

# Set dimension
data modify storage io: dimension_settings_descriptor.dimension set from storage io: dimension

# Set minimum build height
execute store result storage io: dimension_settings_descriptor.min_build_height int 1.0 run scoreboard players get ::in min_build_height

# Set maximum build height
execute store result storage io: dimension_settings_descriptor.max_build_height int 1.0 run scoreboard players get ::in max_build_height
