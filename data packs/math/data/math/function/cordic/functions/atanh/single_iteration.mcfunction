#
# math:cordic/functions/atanh/single_iteration
#

# Translate the vector
execute if score ::math::cordic d matches 1 run function math:cordic/core/default/hyperbolic/crdc_hyperbolic_positive
execute if score ::math::cordic d matches -1 run function math:cordic/core/default/hyperbolic/crdc_hyperbolic_negative
