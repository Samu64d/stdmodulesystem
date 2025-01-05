#
# server:event_system/internal_events/on_player_joined
#

# Set event data
function server:event_system/internal_api/set_last_joined_player_uuid

# Emit events
function server:events/emitters/on_player_joined
execute if score ::server::event_system first_player_joined = ::const FALSE run function server:events/emitters/on_first_player_joined

# Update state
scoreboard players add ::server::event_system player_join_count 1
scoreboard players operation ::server::event_system first_player_joined = ::const TRUE
