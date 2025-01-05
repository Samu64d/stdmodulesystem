#
# keyboard:main/active_player_keyboard/get_keyboard_state_reference/get
#

$data modify storage io: keyboard_state_ref set value "$(active_player_keyboard_ref).keyboard"
