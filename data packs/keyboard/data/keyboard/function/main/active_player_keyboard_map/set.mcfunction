#
# keyboard:main/active_player_keyboard_map/set
#
# Set an active player keyboard at the active player keyboard map
#> Storage
#  @active_player_keyboard_ref (in): the active player keyboard reference
#> Return data
#  boolean flag

data modify storage io: iterable_map_ref set value "storage keyboard:volatile active_player_keyboard_map"
function keyboard:main/active_player_keyboard/get_player_uuid
data modify storage io: key set from storage io: player_uuid
data modify storage io: value_ref set from storage io: active_player_keyboard_ref
return run function collections:referenced_iterable_map/set_key
