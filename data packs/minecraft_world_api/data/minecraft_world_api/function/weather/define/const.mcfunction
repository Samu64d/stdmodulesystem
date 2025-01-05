#
# minecraft_world_api:weather/define/const
#

scoreboard objectives add DEFAULT_WEATHER_STATE dummy

# Default Minecraft weather state
scoreboard players operation ::const DEFAULT_WEATHER_STATE = ::minecraft_world_api::weather::enum_weather_states CLEAR
