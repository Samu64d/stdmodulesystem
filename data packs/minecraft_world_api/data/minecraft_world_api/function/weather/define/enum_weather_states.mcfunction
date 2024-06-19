#
# minecraft_world_api:weather/define/enum_weather_states
#

#define score_holder ::minecraft_world_api::weather::enum_weather_states

scoreboard objectives add CLEAR dummy
scoreboard objectives add RAIN dummy
scoreboard objectives add THUNDER dummy

scoreboard players set ::minecraft_world_api::weather::enum_weather_states CLEAR 0
scoreboard players set ::minecraft_world_api::weather::enum_weather_states RAIN 1
scoreboard players set ::minecraft_world_api::weather::enum_weather_states THUNDER 2
