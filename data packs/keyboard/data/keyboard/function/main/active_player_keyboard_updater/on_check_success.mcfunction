#
# keyboard:main/active_player_keyboard_updater/on_check_success
#

# Emit event
execute if score ::in pressed_time matches -1 run function keyboard:events/emitters/on_player_pressed_key

# Update state values
scoreboard players add ::in pressed_time 1
scoreboard players set ::in released_time -1
