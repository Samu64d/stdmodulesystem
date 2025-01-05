#
# keyboard:main/keyboard_state/new
#
# Create a new keyboard state
#> Storage
#  @keyboard_state_ref (in): the keyboard state reference
#> Return void

data modify storage io: map_ref set from storage io: keyboard_state_ref
function collections:referenced_map/new
