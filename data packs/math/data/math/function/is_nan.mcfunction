#
# math:is_nan
#
# Check if a number is not intialized (false = intialized, true = not intialized)
#> Scores
#  @value (in): the number value
#> Return value
#  boolean flag

# Check for nan
function math:is_nan/is with storage io:

# Return data
return run scoreboard players get ::math success
