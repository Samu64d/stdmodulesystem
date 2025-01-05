#
# math:const/main
#

# Integers

# Negone
scoreboard objectives add NEGONE dummy

# Minimum value for an integer number
scoreboard objectives add INT_MIN dummy

# Maximum value for an integer number
scoreboard objectives add INT_MAX dummy

# Mantissa values

# 1
scoreboard objectives add ONE dummy
scoreboard objectives add ONE_SIZE dummy

# 2
scoreboard objectives add TWO dummy
scoreboard objectives add TWO_SIZE dummy

# E
scoreboard objectives add E dummy
scoreboard objectives add E_SIZE dummy

# Log(2)
scoreboard objectives add LOGE_2 dummy
scoreboard objectives add LOGE_2_SIZE dummy

# Log(10)
scoreboard objectives add LOGE_10 dummy
scoreboard objectives add LOGE_10_SIZE dummy

# Log2(10)
scoreboard objectives add LOG2_10 dummy
scoreboard objectives add LOG2_10_SIZE dummy

# Log10(2)
scoreboard objectives add LOG10_2 dummy
scoreboard objectives add LOG10_2_SIZE dummy

# Fixed point values

# Default value of 1
scoreboard objectives add FXP_ONE dummy

# Default value of 2
scoreboard objectives add FXP_TWO dummy

# Default value of e
scoreboard objectives add FXP_E dummy

# Default value of log(2)
scoreboard objectives add FXP_LOGE_2 dummy

# Default value of log(10)
scoreboard objectives add FXP_LOGE_10 dummy

# Default value of log2(10)
scoreboard objectives add FXP_LOG2_10 dummy

# Default value of log10(2)
scoreboard objectives add FXP_LOG10_2 dummy

scoreboard players set ::const NEGONE -1

scoreboard players set ::const INT_MIN -2147483648
scoreboard players set ::const INT_MAX 2147483647


scoreboard players set ::math::const ONE 1
scoreboard players set ::math::const ONE_SIZE 0

scoreboard players set ::math::const TWO 2
scoreboard players set ::math::const TWO_SIZE 0

scoreboard players set ::math::const E 271828182
scoreboard players set ::math::const E_SIZE 8

scoreboard players set ::math::const LOGE_2 69314718
scoreboard players set ::math::const LOGE_2_SIZE 8

scoreboard players set ::math::const LOGE_10 230258509
scoreboard players set ::math::const LOGE_10_SIZE 8

scoreboard players set ::math::const LOG2_10 332192809
scoreboard players set ::math::const LOG2_10_SIZE 8

scoreboard players set ::math::const LOG10_2 30102999
scoreboard players set ::math::const LOG10_2_SIZE 8

# Fixed point configuration
function math:fixed_point/config

# Floating point configuration
function math:floating_point/const/main

# Integer numbers
function math:const/integers

# Powers
function math:const/powers

# Bitwise functions constants
function math:const/bits

# Trigonometric functions constants
function math:const/angles

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const ONE
scoreboard players operation ::in size = ::math::const ONE_SIZE
execute store result score ::math::const FXP_ONE run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const TWO
scoreboard players operation ::in size = ::math::const TWO_SIZE
execute store result score ::math::const FXP_TWO run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const E
scoreboard players operation ::in size = ::math::const E_SIZE
execute store result score ::math::const FXP_E run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const LOGE_2
scoreboard players operation ::in size = ::math::const LOGE_2_SIZE
execute store result score ::math::const FXP_LOGE_2 run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const LOGE_10
scoreboard players operation ::in size = ::math::const LOGE_10_SIZE
execute store result score ::math::const FXP_LOGE_10 run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const LOG2_10
scoreboard players operation ::in size = ::math::const LOG2_10_SIZE
execute store result score ::math::const FXP_LOG2_10 run function math:fixed_point/calc_const_default_value

# [Constexpr] Do not edit this
scoreboard players operation ::in value = ::math::const LOG10_2
scoreboard players operation ::in size = ::math::const LOG10_2_SIZE
execute store result score ::math::const FXP_LOG10_2 run function math:fixed_point/calc_const_default_value
