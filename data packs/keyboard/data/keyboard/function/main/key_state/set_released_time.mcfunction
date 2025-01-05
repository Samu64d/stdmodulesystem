#
# keyboard:main/key_state/set_released_time
#
# Set the released time of a key state
#> Scores
#  @released_time (in): the released time value in ticks
#> Storage
#  @key_state (in): the key state
#> Return void

execute store result storage io: key_state.released_time int 1.0 run scoreboard players get ::in released_time
