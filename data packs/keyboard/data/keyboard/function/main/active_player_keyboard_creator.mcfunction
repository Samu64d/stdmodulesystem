#
# keyboard:main/active_player_keyboard_creator
#

# Create the active player keyboard
data modify storage io: active_player_keyboard_ref set value "storage keyboard:volatile temp_active_player_keyboard"
function keyboard:main/active_player_keyboard/new

# Get the keyboard state reference
function keyboard:main/active_player_keyboard/get_keyboard_state_reference

# Set the initial keyboard state
data modify storage io: list_ref set value "storage keyboard:static KEY_ID_LIST"
data modify storage io: callback set value "keyboard:main/active_player_keyboard_creator/process_key"
function collections:referenced_list/for_each

# Add the active player keyboard to the active player keyboard map
function keyboard:main/active_player_keyboard_map/set
