#
# math:fixed_point/calc_const_default_value
#

# Trunc value
execute if score ::in size > ::math::const FXP_DEF_SIZE run function math:fixed_point/calc_const_default_value/trunc

# Multiply value
execute if score ::in size < ::math::const FXP_DEF_SIZE run function math:fixed_point/calc_const_default_value/mul

# Return value
return run scoreboard players get ::in value
