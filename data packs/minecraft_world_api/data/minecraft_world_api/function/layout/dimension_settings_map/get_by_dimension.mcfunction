#
# minecraft_world_api:layout/dimension_settings_map/get_by_dimension
#
# Get a dimension settings descriptor from the dimension settings map referencing a dimension
#> Storage
#  @dimension (in): the dimension
#  @dimension_settings_descriptor (out): the dimension settings descriptor
#> Return data
#  boolean flag

# Get the element from the dimension settings descriptor map
data modify storage io: map_ref set value "storage minecraft_world_api:volatile layout.dimension_settings_map"
data modify storage io: key set from storage io: dimension
execute store result score ::minecraft_world_api::layout success run function collections:referenced_map/get_key
execute if score ::minecraft_world_api::layout success = ::const TRUE run data modify storage io: dimension_settings_descriptor set from storage io: value

# Return data
return run scoreboard players get ::minecraft_world_api::layout success
