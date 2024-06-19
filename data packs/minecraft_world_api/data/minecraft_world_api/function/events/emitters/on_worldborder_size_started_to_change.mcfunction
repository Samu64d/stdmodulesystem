#
# minecraft_world_api:events/emitters/on_worldborder_size_started_to_change
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.prev_size set from storage io: prev_data.size

# Fire
data modify storage io: name set value "minecraft_world_api:on_worldborder_size_started_to_change"
function event_system:api/fire
