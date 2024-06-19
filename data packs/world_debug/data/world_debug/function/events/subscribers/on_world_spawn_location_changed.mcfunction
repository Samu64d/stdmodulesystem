#
# world_debug:events/subscribers/on_world_spawn_location_changed
#

data modify storage io: name set value "world_handler:on_world_spawn_location_changed"
data modify storage io: callback set value "world_debug:world_spawn_manager/location_changed"
function event_system:api/subscribe
