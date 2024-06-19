#
# world_handler:events/emitters/on_ticking_area_changed
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.uuid set from storage io: uuid
data modify storage io: data.old_ticking_area_descriptor set from storage io: old_ticking_area_descriptor

# Fire
data modify storage io: name set value "world_handler:on_ticking_area_changed"
function event_system:api/fire
