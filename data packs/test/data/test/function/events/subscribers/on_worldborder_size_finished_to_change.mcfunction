#
# test:events/subscribers/on_worldborder_size_finished_to_change
#

data modify storage io: name set value "minecraft_world_api:on_worldborder_size_finished_to_change"
data modify storage io: callback set value "test:tests/on_worldborder_size_finished_to_change"
function event_system:api/subscribe
