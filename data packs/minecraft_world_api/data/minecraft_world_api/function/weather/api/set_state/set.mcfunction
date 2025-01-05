#
# minecraft_world_api:weather/api/set_state/set
#

# Clear
$execute if score ::in state = ::minecraft_world_api::weather::enum_weather_states CLEAR run weather clear $(duration)

# Rain
$execute if score ::in state = ::minecraft_world_api::weather::enum_weather_states RAIN run weather rain $(duration)

# Thunder
$execute if score ::in state = ::minecraft_world_api::weather::enum_weather_states THUNDER run weather thunder $(duration)
