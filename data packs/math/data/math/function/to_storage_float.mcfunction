#
# math:to_storage_float
#
# Cast a fixed point number to a storage float
#> Scores
#  @value (in): the fixed point number
#> Storage
#  @result (out): the result
#> Return void

scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
function math:to_storage_float/calculate
