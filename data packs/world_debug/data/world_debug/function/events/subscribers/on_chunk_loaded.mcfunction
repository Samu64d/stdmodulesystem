#
# world_debug:events/subscribers/on_chunk_loaded
#

data modify storage io: name set value "world_handler:on_chunk_loaded"
data modify storage io: callback set value "world_debug:chunk_manager/load"
function event_system:api/subscribe
