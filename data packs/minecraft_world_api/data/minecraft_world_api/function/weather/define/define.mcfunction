#
# minecraft_world_api:weather/define/define
#

# Declare module
#define score_holder ::minecraft_world_api::weather
#define score_holder ::minecraft_world_api::weather::const

# Define variables
scoreboard objectives add state dummy
scoreboard objectives add duration dummy
scoreboard objectives add is_precipitating dummy

# Enumeration
function minecraft_world_api:weather/define/enum_weather_states
