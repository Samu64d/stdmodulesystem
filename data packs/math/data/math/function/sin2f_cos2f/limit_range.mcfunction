#
# math:sin2f_cos2f/limit_range
#

# Limit the angle range to the (0; 2π) domain
scoreboard players operation ::in angle = ::math angle
execute store result score ::math angle run function math:angle/rad_mod_2_pif
