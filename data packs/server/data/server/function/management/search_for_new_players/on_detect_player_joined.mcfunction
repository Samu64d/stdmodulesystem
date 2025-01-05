#
# server:management/search_for_new_players/on_detect_player_joined
#

# Reset server leave flag value
scoreboard players set @s server_management_server_leave 0

# Add the player descriptor to the player list
function server:management/player_list/add_executor

# Get player data
function minecraft_entity_api:entity/get_uuid_as_string
function minecraft_entity_api:player_entity/get_name

# Emit internal event
function server:event_system/internal_events/on_player_joined
