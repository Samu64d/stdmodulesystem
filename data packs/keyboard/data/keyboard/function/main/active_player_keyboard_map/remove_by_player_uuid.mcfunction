#
# keyboard:main/active_player_keyboard_map/remove_by_player_uuid
#
# Remove an active player keyboard from the active player keyboard map matching a player uuid
#> Storage
#  @player_uuid (in): the player uuid
#> Return data
#  boolean flag

data modify storage io: iterable_map_ref set value "storage keyboard:volatile active_player_keyboard_map"
data modify storage io: key set from storage io: player_uuid
return run function collections:referenced_iterable_map/remove_key
