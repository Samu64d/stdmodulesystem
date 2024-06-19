#
# minecraft_world_api:weather/api/set_state
#
# Set the weather state
#> Scores
#  @state (in): the weather state
#  @duration (in): the duration
#> Return void

execute store result storage io: duration int 1.0 run scoreboard players get ::in duration
function minecraft_world_api:weather/api/set_state/set with storage io:
