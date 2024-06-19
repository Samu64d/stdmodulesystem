#
# test:events/subscribers/on_player_left
#

data modify storage io: name set value "server:on_player_left"
data modify storage io: callback set value "test:tests/on_player_left"
function event_system:api/subscribe
