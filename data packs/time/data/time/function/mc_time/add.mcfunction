#
# time:mc_time/add
#
# Add ticks to time
#> Scores
#  @value (in): ticks value
#> Return void

# Add time
execute store result storage io: ticks int 1.0 run scoreboard players get ::in value
function time:mc_time/add/add with storage io:
