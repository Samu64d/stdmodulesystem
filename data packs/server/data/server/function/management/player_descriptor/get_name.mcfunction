#
# server:management/player_descriptor/get_name
#
# Get the name of the player matching the player descriptor
#> Storage
#  @player_descriptor (in): the player descriptor
#  @name (out): the player name
#> Return void

data modify storage io: name set from storage io: player_descriptor.name
