#
# keyboard:main/key_state/set_pressed_time
#
# Set the pressed time of a key state
#> Scores
#  @pressed_time (in): the pressed time value in ticks
#> Storage
#  @key_state (in): the key state
#> Return void

execute store result storage io: key_state.pressed_time int 1.0 run scoreboard players get ::in pressed_time
