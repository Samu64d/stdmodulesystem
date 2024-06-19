#
# world_debug:events/subscribers/on_ticking_area_created
#

data modify storage io: name set value "world_handler:on_ticking_area_created"
data modify storage io: callback set value "world_debug:ticking_area_manager/created"
function event_system:api/subscribe
