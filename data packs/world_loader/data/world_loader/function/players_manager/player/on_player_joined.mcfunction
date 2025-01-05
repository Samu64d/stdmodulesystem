#
# world_loader:players_manager/player/on_player_joined
#

# Create player handler
data modify storage io: uuid set from storage io: data.uuid
execute if score ::world_loader::const ENABLE_PLAYER_TICKING_AREA = ::const TRUE run function world_loader:players_manager/player/handle_player
