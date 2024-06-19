#
# world_loader:players_manager/handled_player_descriptor/new
#
# Create a new handled player descriptor
#> Storage
#  @player_uuid (in): the player uuid
#  @ticking_area_uuid (in): the ticking area uuid
#  @handled_player_descriptor (out): the handled player descriptor
#> Return void

# Create object
data modify storage io: handled_player_descriptor set value {player: [I; 0, 0, 0, 0], ticking_area: [I; 0, 0, 0, 0]}

# Set player uuid
data modify storage io: handled_player_descriptor.player set from storage io: player_uuid

# Set ticking area uuid
data modify storage io: handled_player_descriptor.ticking_area set from storage io: ticking_area_uuid
