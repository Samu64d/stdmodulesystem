#
# keyboard:main/player/on_player_left
#

# Get player uuid
data modify storage io: player_uuid set from storage io: data.uuid

# Remove the active player keyboard
function keyboard:main/active_player_keyboard_deleter
