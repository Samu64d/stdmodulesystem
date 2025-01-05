#
# world_debug:events/subscribers/on_chunk_ticked
#

data modify storage io: name set value "world_handler:on_chunk_ticked"
data modify storage io: callback set value "world_debug:chunk_manager/tick"
function event_system:api/subscribe
