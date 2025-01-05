#
# minecraft_world_api:layout/dimension_settings_map/set
#
# Set a dimension settings descriptor at the dimension settings map
#> Storage
#  @dimension_settings_descriptor (in): the dimension settings descriptor
#> Return void

data modify storage io: map_ref set value "storage minecraft_world_api:volatile layout.dimension_settings_map"
function minecraft_world_api:layout/dimension_settings_descriptor/get_dimension
data modify storage io: key set from storage io: dimension
data modify storage io: value_ref set value "storage io: dimension_settings_descriptor"
function collections:referenced_map/set_key
