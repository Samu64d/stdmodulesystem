#
# world_handler:events/emitters/on_ticking_area_removed
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.old_ticking_area_descriptor set from storage io: ticking_area_descriptor

# Fire
data modify storage io: name set value "world_handler:on_ticking_area_removed"
function event_system:api/fire
