#
# math:const/angles
#

# Mantissa values

# First nine digits of 1/2π expressed in radians
scoreboard objectives add 1_PI_2 dummy

# First nine digits of π expressed in radians
scoreboard objectives add PI dummy

# First nine digits of 2π number expressed in radians
scoreboard objectives add 2_PI dummy

# First nine digits of 3/2π expressed in radians
scoreboard objectives add 3_PI_2 dummy

scoreboard objectives add PI_SIZE dummy

# First nine digits of 1/2π in degrees
scoreboard objectives add 1_PI_2_DEG dummy

# First eight digits of π expressed in degrees
scoreboard objectives add PI_DEG dummy

# First nine digits of 3/2π number in degrees
scoreboard objectives add 3_PI_2_DEG dummy

# First nine digits of 2π number in degrees
scoreboard objectives add 2_PI_DEG dummy

scoreboard objectives add PI_DEG_SIZE dummy

# Fixed point values

# Default value of digits of 1/2π expressed in radians
scoreboard objectives add FXP_1_PI_2 dummy

# Default value of π expressed in radians
scoreboard objectives add FXP_PI dummy

# Default value of digits of 2π number expressed in radians
scoreboard objectives add FXP_3_PI_2 dummy

# Default value of digits of 2π number expressed in radians
scoreboard objectives add FXP_2_PI dummy

# Default value of digits of 1/2π in degrees
scoreboard objectives add FXP_1_PI_2_DEG dummy

# Default value of digits of π expressed in degrees
scoreboard objectives add FXP_PI_DEG dummy

# Default value of digits of 2π number in degrees
scoreboard objectives add FXP_3_PI_2_DEG dummy

# Default value of digits of 2π number in degrees
scoreboard objectives add FXP_2_PI_DEG dummy

scoreboard players set ::math::const 1_PI_2 157079632
scoreboard players set ::math::const PI 314159265
scoreboard players set ::math::const 3_PI_2 471238898
scoreboard players set ::math::const 2_PI 628318530

scoreboard players set ::math::const PI_SIZE 8

scoreboard players set ::math::const 1_PI_2_DEG 90000000
scoreboard players set ::math::const PI_DEG 180000000
scoreboard players set ::math::const 3_PI_2_DEG 270000000
scoreboard players set ::math::const 2_PI_DEG 360000000

scoreboard players set ::math::const PI_DEG_SIZE 6

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 1_PI_2
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math::const FXP_1_PI_2 run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math::const FXP_PI run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 3_PI_2
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math::const FXP_3_PI_2 run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 2_PI
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math::const FXP_2_PI run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 1_PI_2_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math::const FXP_1_PI_2_DEG run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const PI_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math::const FXP_PI_DEG run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 3_PI_2_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math::const FXP_3_PI_2_DEG run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const 2_PI_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math::const FXP_2_PI_DEG run function math:fixed_point/calc_const_default_value
