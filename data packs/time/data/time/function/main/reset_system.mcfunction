#
# time:main/reset_system
#

# Reset Minecraft time
function time:mc_time/reset

# Reset all internal values
scoreboard players set ::time day 0
scoreboard players set ::time day_tick 0
scoreboard players set ::time tick 0
scoreboard players set ::time mcday 0
scoreboard players set ::time mcday_tick 0
scoreboard players set ::time mctick 0
scoreboard players set ::time need_reset 0
