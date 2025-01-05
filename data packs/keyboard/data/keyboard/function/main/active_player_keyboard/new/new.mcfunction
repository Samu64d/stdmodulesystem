#
# keyboard:main/active_player_keyboard/new/new
#

# Create object
$data modify $(active_player_keyboard_ref) set value {player: [I; 0, 0, 0, 0], keyboard: {}}

# Set player uuid
$data modify $(active_player_keyboard_ref).player set from storage io: player_uuid

# Set keyboard state
data modify storage io: keyboard_state_ref set value "storage io: active_player_keyboard.keyboard"
function keyboard:main/keyboard_state/new
