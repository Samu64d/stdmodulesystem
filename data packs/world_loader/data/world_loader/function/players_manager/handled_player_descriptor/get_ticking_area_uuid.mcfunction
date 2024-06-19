#
# world_loader:players_manager/handled_player_descriptor/get_ticking_area_uuid
#
# Get the ticking area uuid of an handled player descriptor
#> Storage
#  @handled_player_descriptor (in): the handled player descriptor
#  @ticking_area_uuid (out): the ticking area uuid
#> Return void

data modify storage io: ticking_area_uuid set from storage io: handled_player_descriptor.ticking_area
