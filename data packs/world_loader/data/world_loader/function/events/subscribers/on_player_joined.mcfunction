#
# world_loader:events/subscribers/on_player_joined
#

data modify storage io: name set value "server:on_player_joined"
data modify storage io: callback set value "world_loader:players_manager/player/on_player_joined"
function event_system:api/subscribe
