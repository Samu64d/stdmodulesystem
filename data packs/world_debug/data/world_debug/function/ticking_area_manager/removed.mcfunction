#
# world_debug:ticking_area_manager/removed
#

# Get removed ticking area uuid
data modify storage io: ticking_area_descriptor set from storage io: data.old_ticking_area_descriptor
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Display message
tellraw @a [{"text":"Ticking area removed with UUID: ", "color":"yellow"}, {"nbt": "uuid", "storage": "io:"}]
