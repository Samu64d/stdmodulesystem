#
# world_debug:events/subscribers/on_ticking_area_removed
#

data modify storage io: name set value "world_handler:on_ticking_area_removed"
data modify storage io: callback set value "world_debug:ticking_area_manager/removed"
function event_system:api/subscribe
