#
# world_handler:events/emitters/on_chunk_ticked
#

# Set data
data modify storage io: data set value {}
data modify storage io: data.chunk set from storage io: chunk_descriptor

# Fire
data modify storage io: name set value "world_handler:on_chunk_ticked"
function event_system:api/fire_end_tick
