#
# world_loader:players_manager/player/on_player_left
#

# Delete player handler
data modify storage io: uuid set from storage io: data.uuid
function world_loader:players_manager/player/unhandle_player
