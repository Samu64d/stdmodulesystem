#
# keyboard:main/key_state/get_key_id
#
# Get the key id of a key state
#> Storage
#  @key_state (in): the key state
#  @key_id (out): the key id
#> Return void

data modify storage io: key_id set from storage io: key_state.key
