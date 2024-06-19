#
# minecraft_world_api:worldborder/main/observe_worldborder_data
#

data modify storage io: path set value "minecraft_world_api:data worldborder.border"
data modify storage io: start_event set value "minecraft_world_api:events/emitters/on_worldborder_size_started_to_change"
data modify storage io: tick_event set value "null"
data modify storage io: end_event set value "minecraft_world_api:events/emitters/on_worldborder_size_finished_to_change"
function data_observer:api/observe
