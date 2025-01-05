#
# keyboard:api/get_key_pressed_time
#
# Get the time since a key was pressed for a player
#> Storage
#  @player_uuid (in): the player uuid
#  @key_id (in): the key id
#> Return data
#  time value in ticks

# Get the active player keboard
execute unless function keyboard:main/active_player_keyboard_map/get_reference_by_player_uuid run return -1

# Get keyboard state
function keyboard:main/active_player_keyboard/get_keyboard_state_reference

# Get key state
execute unless function keyboard:main/keyboard_state/get_key_state_by_key_id run return -1

# Get pressed time 
return run function keyboard:main/key_state/get_pressed_time
