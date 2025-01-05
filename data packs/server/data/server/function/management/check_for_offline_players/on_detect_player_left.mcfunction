#
# server:management/check_for_offline_players/on_detect_player_left
#

# Get player data
function server:management/player_descriptor/get_name
function server:management/player_descriptor/get_uuid

# Remove the player descriptor from the player list
function server:management/player_list/remove_by_uuid

# Emit internal event
function server:event_system/internal_events/on_player_left
