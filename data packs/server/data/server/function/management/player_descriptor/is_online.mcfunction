#
# server:management/player_descriptor/is_online
#
# Check if the player matching the player descriptor is online
#> Storage
#  @player_descriptor (in): the player descriptor
#> Return data
#  boolean flag

# Check if the player is selectable
data modify storage io: callback set value "null:null"
return run function server:management/player_descriptor/select
