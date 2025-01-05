#
# math:fixed_point/config
#

# Number of digits reserved for fractional part: supported range 1..4
scoreboard objectives add FXP_DEF_SIZE dummy

# Fractional part number magnitude
scoreboard objectives add FXP_DEF_MAG dummy

scoreboard players set ::math::const FXP_DEF_SIZE 2

# [Constexpr] Do not edit this
execute if score ::math::const FXP_DEF_SIZE matches ..0 run scoreboard players set ::math::const FXP_DEF_SIZE 1
execute if score ::math::const FXP_DEF_SIZE matches 5.. run scoreboard players set ::math::const FXP_DEF_SIZE 4

# [Constexpr] Do not edit this
scoreboard players operation ::in pow = ::math::const FXP_DEF_SIZE
execute store result score ::math::const FXP_DEF_MAG run function math:utils/get_power_of_ten
