#
# time:main/main
#

# Sync variables with game variables
execute store result score ::time mcday run function time:mc_time/get_day
execute store result score ::time mcday_tick run function time:mc_time/get_day_time
execute store result score ::time mcworld_tick run function time:mc_time/get_game_time
execute store result score ::time mctick run function time:mc_time/get

# Sync internal time and minecraft time
scoreboard players operation ::time tick = ::time mctick

# Internal time variables
scoreboard players add ::time tick 0
scoreboard players operation ::time day = ::time tick
scoreboard players operation ::time day /= ::time::const DAY_SIZE
scoreboard players operation ::time day_tick = ::time tick
scoreboard players operation ::time day_tick %= ::time::const DAY_SIZE

# Reset if necessary
scoreboard players operation ::time need_reset = ::const FALSE
execute if score ::time tick matches ..-1 run scoreboard players operation ::time need_reset = ::const TRUE
execute if score ::time tick >= ::const INT_MAX run scoreboard players operation ::time need_reset = ::const TRUE
execute unless score ::time day = ::time mcday run scoreboard players operation ::time need_reset = ::const TRUE
execute if score ::time need_reset = ::const TRUE run tellraw @a {"text":"[Time] [Error] Wrong time variables! The world time is reset to 0", "color":"red"}
execute if score ::time need_reset = ::const TRUE run function time:main/reset_system

# Calculate current date
function time:date/main
