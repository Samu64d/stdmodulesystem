#
# keyboard:main/keyboard_state/set
#
# Set a key state at a keyboard state
#> Storage
#  @keyboard_state_ref (in): the keyboard state reference
#  @key_state (in): the key state
#> Return data
#  boolean flag

data modify storage io: map_ref set from storage io: keyboard_state_ref
function keyboard:main/key_state/get_key_id
data modify storage io: key set from storage io: key_id
data modify storage io: value_ref set value "storage io: key_state"
return run function collections:referenced_map/set_key
