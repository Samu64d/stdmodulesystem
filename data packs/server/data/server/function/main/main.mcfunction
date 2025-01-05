#
# server:main/main
#

# Read internal configuration
function server:config/internal_config

# Get the number of online players inside the selector player list
execute store result score ::server selector_online_players run function server:selector_player_list/get_count

# Get the number of online entities inside the selector entity list
execute store result score ::server selector_loaded_entities run function server:selector_entity_list/get_count

# Tick server management system
function server:management/main

# Set singleplayer flag
execute store success score ::server is_singleplayer if score ::server::management online_players matches 1

# Set platform ralated stats

# Is integrated flag
execute store result score ::server is_integrated run function server:platform/is_server
execute store success score ::server is_integrated if score ::server is_integrated = ::const FALSE

# Game version
execute store result score ::server game_version run function server:platform/get_game_version

# Is modded flag
execute store result score ::server is_modded run function server:platform/is_modded

# Function permission level
execute store result score ::server permission_level run function server:platform/get_function_permission_level

# Update session time
scoreboard players add ::server session_time 1
