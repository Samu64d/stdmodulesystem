#
# math:fixed_point/calc_const_value
#

# Trunc value
execute if score ::in size > ::in p run function math:fixed_point/calc_const_value/trunc

# Multiply value
execute if score ::in size < ::in p run function math:fixed_point/calc_const_value/mul

# Return value
return run scoreboard players get ::in value
