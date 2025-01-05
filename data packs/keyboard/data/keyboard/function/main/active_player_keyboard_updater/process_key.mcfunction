#
# keyboard:main/active_player_keyboard_updater/process_key
#

# Get key state
data modify storage io: key_id set from storage io: element
execute unless function keyboard:main/keyboard_state/get_key_state_by_key_id run return 0

# Get pressed time
execute store result score ::in pressed_time run function keyboard:main/key_state/get_pressed_time

# Get released time
execute store result score ::in released_time run function keyboard:main/key_state/get_released_time

# Check for key pressed
execute if function keyboard:main/player/has_key_pressed run function keyboard:main/active_player_keyboard_updater/on_check_success

# Check for key not pressed
execute unless function keyboard:main/player/has_key_pressed run function keyboard:main/active_player_keyboard_updater/on_check_fails

# Set pressed time
function keyboard:main/key_state/set_pressed_time

# Set released time
function keyboard:main/key_state/set_released_time

# Set key state
function keyboard:main/keyboard_state/set
