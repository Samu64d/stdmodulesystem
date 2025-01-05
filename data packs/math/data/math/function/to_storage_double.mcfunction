#
# math:to_storage_double
#
# Cast a fixed point number to a storage double
#> Scores
#  @value (in): the fixed point number
#> Storage
#  @result (out): the result
#> Return void

scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
function math:to_storage_double/calculate
