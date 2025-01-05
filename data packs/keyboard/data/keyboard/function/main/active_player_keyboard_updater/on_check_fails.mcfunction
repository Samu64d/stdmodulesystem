#
# keyboard:main/active_player_keyboard_updater/on_check_fails
#

# Check for initial state
execute if score ::in pressed_time matches -1 if score ::in released_time matches -1 run return 0

# Emit event
execute if score ::in released_time matches -1 run function keyboard:events/emitters/on_player_released_key

# Update state values
scoreboard players set ::in pressed_time -1
scoreboard players add ::in released_time 1
