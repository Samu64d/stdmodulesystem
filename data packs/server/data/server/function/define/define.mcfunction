#
# server:define/define
#

# Declare module
#define score_holder ::server
#define score_holder ::server::const

# Declare storage
#define storage server:static
#define storage server:volatile
#define storage server:data

# Define variables

# Server session time in ticks
scoreboard objectives add session_time dummy

# Number of online players found by the selecotor
scoreboard objectives add selector_online_players dummy

# Number of loaded entities found by the selecotor
scoreboard objectives add selector_loaded_entities dummy

# Number of online players handled by the server
scoreboard objectives add online_players dummy

# Flag to check if the server is running in singleplayer
scoreboard objectives add is_singleplayer dummy

# Platform related variables

# Flag to check if the server is integrated
scoreboard objectives add is_integrated dummy

# Game data version id
scoreboard objectives add game_version dummy

# Modded flag
scoreboard objectives add is_modded dummy

# Function permission level
scoreboard objectives add permission_level dummy

# Leave game statistic
scoreboard objectives add server_management_server_leave custom:leave_game

scoreboard objectives add success dummy
scoreboard objectives add callback_results dummy

# Other module declarations
function server:event_system/define/define
function server:level/define/define
function server:management/define/define
function server:platform/define/define
