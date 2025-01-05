#
# keyboard:main/key_state/new
#
# Create a new key state
#> Storage
#  @key_id (in): the key id
#  @key_state (out): the key state
#> Return void

# Create object
data modify storage io: key_state set value {key: "", pressed_time: -1, released_time: -1}

# Set key id
data modify storage io: key_state.key set from storage io: key_id
