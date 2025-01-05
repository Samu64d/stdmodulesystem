#
# keyboard:main/key_state/get_pressed_time
#
# Get the pressed time of a key state
#> Storage
#  @key_state (in): the key state
#> Return data
#  pressed time value in ticks

return run data get storage io: key_state.pressed_time 1.0
