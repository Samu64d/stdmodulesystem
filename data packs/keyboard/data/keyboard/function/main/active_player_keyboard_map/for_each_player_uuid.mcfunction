#
# keyboard:main/active_player_keyboard_map/for_each_player_uuid
#
# Iterate through the player uuids of the active player keyboard map
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage keyboard:volatile temp_callback set from storage io: callback

# Iterate through the active player keyboard map
data modify storage io: iterable_map_ref set value "storage keyboard:volatile active_player_keyboard_map"
data modify storage io: callback set value "keyboard:main/active_player_keyboard_map/for_each_player_uuid/callback"
function collections:referenced_iterable_map/for_each
