#
# world_handler:world_spawn_manager/main/observe_spawn_data
#

data modify storage io: path set value "world_handler:data world_spawn_manager.world_spawn"
data modify storage io: start_event set value "null"
data modify storage io: tick_event set value "world_handler:events/emitters/on_world_spawn_location_changed"
data modify storage io: end_event set value "null"
function data_observer:api/observe
