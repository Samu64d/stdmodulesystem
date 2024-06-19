#
# world_debug:events/subscribers/on_chunk_unloaded
#

data modify storage io: name set value "world_handler:on_chunk_unloaded"
data modify storage io: callback set value "world_debug:chunk_manager/unload"
function event_system:api/subscribe
