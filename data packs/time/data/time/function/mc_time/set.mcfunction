#
# time:mc_time/set
#
# Set time ticks
#> Scores
#  @value (in): tick value
#> Return void

# Check for negative values
execute if score ::in value matches ..-1 run scoreboard players set ::in value 0

# Set time
execute store result storage io: ticks int 1.0 run scoreboard players get ::in value
function time:mc_time/set/set with storage io:
