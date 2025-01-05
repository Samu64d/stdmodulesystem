#
# keyboard:main/keyboard_state/get_key_state_by_key_id
#
# Get a key state from a keyboard state matching a key id
#> Storage
#  @keyboard_state_ref (in): the keyboard state reference
#  @key_id (in): the key id
#  @key_state (out): the key state
#> Return data
#  boolean flag

data modify storage io: map_ref set from storage io: keyboard_state_ref
data modify storage io: key set from storage io: key_id
execute store result score ::keyboard success run function collections:referenced_map/get_key
execute if score ::keyboard success = ::const TRUE run data modify storage io: key_state set from storage io: value

# Return data
return run scoreboard players get ::keyboard success
