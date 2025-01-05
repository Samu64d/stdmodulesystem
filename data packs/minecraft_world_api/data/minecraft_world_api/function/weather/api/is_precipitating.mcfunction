#
# minecraft_world_api:weather/api/is_precipitating
#
# Check if currently is precipitating
#> Return data
#  boolean flag

# Get state
execute store result score ::minecraft_world_api::weather state run function minecraft_world_api:weather/api/get_state

# Check for rain or thunder state
scoreboard players operation ::minecraft_world_api::weather is_precipitating = ::const FALSE
execute if score ::minecraft_world_api::weather state = ::minecraft_world_api::weather::enum_weather_states RAIN run scoreboard players operation ::minecraft_world_api::weather is_precipitating = ::const TRUE
execute if score ::minecraft_world_api::weather state = ::minecraft_world_api::weather::enum_weather_states THUNDER run scoreboard players operation ::minecraft_world_api::weather is_precipitating = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::weather is_precipitating
