#
# keyboard:main/active_player_keyboard_creator/process_key
#

# Create initial key state
data modify storage io: key_id set from storage io: element
function keyboard:main/key_state/new

# Set the key state
function keyboard:main/keyboard_state/set
