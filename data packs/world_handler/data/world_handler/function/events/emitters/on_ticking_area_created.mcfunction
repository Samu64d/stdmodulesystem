#
# world_handler:events/emitters/on_ticking_area_created
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.uuid set from storage io: uuid

# Fire
data modify storage io: name set value "world_handler:on_ticking_area_created"
function event_system:api/fire
