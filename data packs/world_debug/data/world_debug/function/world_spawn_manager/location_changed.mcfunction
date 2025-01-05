#
# world_debug:world_spawn_manager/location_changed
#

# Display message
tellraw @a [{"text":"World spawn changed location. Previous location was at: ", "color":"yellow"}, {"nbt": "data.prev_position", "storage": "io:"}]
