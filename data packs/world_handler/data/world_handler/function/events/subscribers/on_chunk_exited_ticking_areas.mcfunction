#
# world_handler:events/subscribers/on_chunk_exited_ticking_areas
#

data modify storage io: name set value "world_handler:on_chunk_exited_ticking_areas"
data modify storage io: callback set value "world_handler:chunk_manager/main/on_chunk_exited_ticking_areas"
function event_system:api/subscribe
