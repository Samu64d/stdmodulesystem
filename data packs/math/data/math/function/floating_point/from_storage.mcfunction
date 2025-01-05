#
# math:floating_point/from_storage
#
# Cast a storage number to a floating point number
#> Storage
#  @value (in): the storage number
#  @result (out): the result value
#> Return void

# Compute exponent
scoreboard players set ::math::floating_point p 0
function math:floating_point/from_storage/exponent/root

# Compute number
scoreboard players set ::math::floating_point number 0
function math:floating_point/from_storage/number/root

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
