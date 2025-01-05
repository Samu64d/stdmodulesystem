#
# minecraft_world_api:layout/dimension_settings_map/clear
#
# Clear the dimension settings map
#> Return void

data modify storage io: map_ref set value "storage minecraft_world_api:volatile layout.dimension_settings_map"
function collections:referenced_map/clear
