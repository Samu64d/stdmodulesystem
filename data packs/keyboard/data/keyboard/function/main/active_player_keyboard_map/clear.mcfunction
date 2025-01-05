#
# keyboard:main/active_player_keyboard_map/clear
#
# Clear the active player keyboard map
#> Return void

# Clear the active player keyboard map
data modify storage io: iterable_map_ref set value "storage keyboard:volatile active_player_keyboard_map"
function collections:referenced_iterable_map/clear
