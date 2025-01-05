#
# math:is_eveni
#
# Check if an integer is even
#> Scores
#  @value (in): the number value
#> Return value
#  boolean flag

scoreboard players set ::math temp0 2
scoreboard players operation ::in value %= ::math temp0

# Return data
return run execute if score ::in value matches 0
