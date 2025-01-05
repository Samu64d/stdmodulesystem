#
# keyboard:main/active_player_keyboard/get_player_uuid/get
#

$data modify storage io: player_uuid set from $(active_player_keyboard_ref).player
