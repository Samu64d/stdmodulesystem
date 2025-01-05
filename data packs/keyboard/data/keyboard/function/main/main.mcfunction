#
# keyboard:main/main
#

# Update player keyboard states
data modify storage io: callback set value "keyboard:main/active_player_keyboard_updater"
function keyboard:main/active_player_keyboard_map/for_each_player_uuid
