#
# server:level/random_tick_speed/set
#
# Set the random tick speed value
#> Scores
#  @value (in): random tick speed value
#> Return void

# Check for negative values
execute if score ::in value matches ..-1 run scoreboard players set ::in value 0

# Set
execute store result storage io: value int 1.0 run scoreboard players get ::in value
function server:level/random_tick_speed/set/set with storage io:
