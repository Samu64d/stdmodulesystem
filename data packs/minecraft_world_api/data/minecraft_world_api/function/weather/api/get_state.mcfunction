#
# minecraft_world_api:weather/api/get_state
#
# Get the weather state
#> Return data
#  weather state

# Default to clear
scoreboard players operation ::minecraft_world_api::weather state = ::minecraft_world_api::weather::enum_weather_states CLEAR

# Rain
execute if predicate minecraft_world_api:weather/is_raining run scoreboard players operation ::minecraft_world_api::weather state = ::minecraft_world_api::weather::enum_weather_states RAIN

# Thunder
execute if predicate minecraft_world_api:weather/is_thundering run scoreboard players operation ::minecraft_world_api::weather state = ::minecraft_world_api::weather::enum_weather_states THUNDER

# Return data
return run scoreboard players get ::minecraft_world_api::weather state
