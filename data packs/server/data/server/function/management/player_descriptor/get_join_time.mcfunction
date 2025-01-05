#
# server:management/player_descriptor/get_join_time
#
# Get the join time of a player matching a player descriptor
#> Storage
#  @player_descriptor (in): the player descriptor
#> Return data
#  join time value

return run data get storage io: player_descriptor.join_time 1.0
