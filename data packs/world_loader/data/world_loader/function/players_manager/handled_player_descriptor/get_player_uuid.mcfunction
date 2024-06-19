#
# world_loader:players_manager/handled_player_descriptor/get_player_uuid
#
# Get the player uuid of an handled player descriptor
#> Storage
#  @handled_player_descriptor (in): the handled player descriptor
#  @player_uuid (out): the player uuid
#> Return void

data modify storage io: player_uuid set from storage io: handled_player_descriptor.player
