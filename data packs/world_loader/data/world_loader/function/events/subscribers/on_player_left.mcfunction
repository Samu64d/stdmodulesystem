#
# world_loader:events/subscribers/on_player_left
#

data modify storage io: name set value "server:on_player_left"
data modify storage io: callback set value "world_loader:players_manager/player/on_player_left"
function event_system:api/subscribe
