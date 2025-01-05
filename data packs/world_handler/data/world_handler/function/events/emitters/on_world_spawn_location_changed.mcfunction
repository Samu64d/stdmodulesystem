#
# world_handler:events/emitters/on_world_spawn_location_changed
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.prev_dimension set from storage io: prev_data.spawn_dimension
data modify storage io: data.prev_position set from storage io: prev_data.spawn_pos

# Fire
data modify storage io: name set value "world_handler:on_world_spawn_location_changed"
function event_system:api/fire
