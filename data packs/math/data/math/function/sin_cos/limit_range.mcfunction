#
# math:sin_cos/limit_range
#

# Limit the angle range to the (0; 2π) domain
scoreboard players operation ::in angle = ::math angle
execute store result score ::math angle run function math:angle/rad_mod_2_pi

execute if score ::math angle >= ::math::const FXP_PI run scoreboard players set ::math sign -1

# Limit the angle range to the (0; π) domain
scoreboard players operation ::in angle = ::math angle
execute store result score ::math angle run function math:angle/rad_mod_pi

# Limit the angle range to the (-π/2; π/2) domain
execute if score ::math angle > ::math::const FXP_1_PI_2 run scoreboard players operation ::math sign *= ::const NEGONE
execute if score ::math angle > ::math::const FXP_1_PI_2 run scoreboard players operation ::math angle -= ::math::const FXP_PI
