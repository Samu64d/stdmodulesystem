#
# world_handler:events/subscribers/on_ticking_area_removed
#

data modify storage io: name set value "world_handler:on_ticking_area_removed"
data modify storage io: callback set value "world_handler:ticking_area_chunks_manager/main/on_ticking_area_removed"
function event_system:api/subscribe
