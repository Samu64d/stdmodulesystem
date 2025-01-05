#
# keyboard:main/active_player_keyboard_updater
#

# Get the active player keyboard reference
function keyboard:main/active_player_keyboard_map/get_reference_by_player_uuid

# Get the keyboard state reference
function keyboard:main/active_player_keyboard/get_keyboard_state_reference

# Update the keyboard state
data modify storage io: list_ref set value "storage keyboard:static KEY_ID_LIST"
data modify storage io: callback set value "keyboard:main/active_player_keyboard_updater/process_key"
function collections:referenced_list/for_each
