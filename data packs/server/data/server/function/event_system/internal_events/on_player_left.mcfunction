#
# server:event_system/internal_events/on_player_left
#

# Set event data
function server:event_system/internal_api/set_last_left_player_uuid

# Emit event
function server:events/emitters/on_player_left

# Update state
scoreboard players add ::server::event_system player_leave_count 1
