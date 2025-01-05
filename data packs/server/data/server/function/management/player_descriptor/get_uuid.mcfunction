#
# server:management/player_descriptor/get_uuid
#
# Get the uuid of the player matching the player descriptor
#> Storage
#  @player_descriptor (in): the player descriptor
#  @uuid (out): the player uuid
#> Return void

data modify storage io: uuid set from storage io: player_descriptor.uuid
