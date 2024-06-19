#
# time:mc_time/get
#
# Get time
#> Return data
#  time value

# Add days contribute
execute store result score ::time temp0 run function time:mc_time/get_day
scoreboard players operation ::time temp0 *= ::time::const DAY_SIZE

# Add daytime contribute
execute store result score ::time temp1 run function time:mc_time/get_day_time
scoreboard players operation ::time temp0 += ::time temp1

# Return data
return run scoreboard players get ::time temp0
