#
# keyboard:main/active_player_keyboard_map/get_reference_by_player_uuid
#
# Get an active player keyboard reference from the active player keyboard map matching a player uuid
#> Storage
#  @player_uuid (in): the player uuid
#  @active_player_keyboard_ref (out): the active player keyboard reference
#> Return data
#  boolean flag

data modify storage io: iterable_map_ref set value "storage keyboard:volatile active_player_keyboard_map"
function keyboard:main/active_player_keyboard/get_player_uuid
data modify storage io: key set from storage io: player_uuid
execute store result score ::keyboard success run function collections:referenced_iterable_map/get_key_reference
execute if score ::keyboard success = ::const TRUE run data modify storage io: active_player_keyboard_ref set from storage io: value_ref

# Return data
return run scoreboard players get ::keyboard success
