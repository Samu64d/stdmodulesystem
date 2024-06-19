#
# world_debug:ticking_area_manager/created
#

# Display message
data modify storage io: messages set value ['{"text":"Ticking area created with UUID: ", "color":"yellow"}', '{"nbt": "data.uuid", "storage": "io:"}']
execute as @a run function io:print/fprintlc
