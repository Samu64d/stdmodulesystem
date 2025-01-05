#
# math:sinf_cosf/limit_range
#

# Limit the angle range to the (0; 2π) domain
scoreboard players operation ::in angle = ::math angle
execute store result score ::math angle run function math:angle/rad_mod_2_pif

# Get pi value
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::math temp0 run function math:fixed_point/calc_const_value

execute if score ::math angle >= ::math temp0 run scoreboard players set ::math sign -1

# Limit the angle range to the (0; π) domain
scoreboard players operation ::in angle = ::math angle
execute store result score ::math angle run function math:angle/rad_mod_pif

# Get 1/2 pi value
scoreboard players operation ::in value = ::math::const 1_PI_2
scoreboard players operation ::in size = ::math::const PI_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::math value run function math:fixed_point/calc_const_value

# Limit the angle range to the (-π/2; π/2) domain
execute if score ::math angle > ::math value run scoreboard players operation ::math sign *= ::const NEGONE
execute if score ::math angle > ::math value run scoreboard players operation ::math angle -= ::math temp0
