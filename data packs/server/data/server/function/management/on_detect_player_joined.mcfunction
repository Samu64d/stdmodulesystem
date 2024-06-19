#
# server:management/on_detect_player_joined
#

# Reset flag value
scoreboard players set @s server_management.server_leave 0

# Add the player descriptor to the player list
function server:management/player_list/add_executor

# Get player data
function server:player_entity/get_uuid
function server:player_entity/get_name

# Fire internal event
function server:event_system/internal_events/on_player_joined
