#
# keyboard:main/key_state/get_released_time
#
# Get the released time of a key state
#> Storage
#  @key_state (in): the key state
#> Return data
#  released time value in ticks

return run data get storage io: key_state.released_time 1.0
