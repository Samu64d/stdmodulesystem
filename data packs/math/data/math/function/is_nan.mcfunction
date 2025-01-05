#
# math:is_nan
#
# Check if a number is not intialized (false = intialized, true = not intialized)
#> Storage
#  @value_ref (in): the value reference
#> Return value
#  boolean flag

# Check for nan
function math:is_nan/is with storage io:

# Return data
return run scoreboard players get ::math success
