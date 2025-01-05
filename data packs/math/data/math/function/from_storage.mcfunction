#
# math:from_storage
#
# Cast a storage number to a fixed point number 
#> Storage
#  @value (in): the storage number
#> Return data
#  result

scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
return run function math:from_storage/calculate
