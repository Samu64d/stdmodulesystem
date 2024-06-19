#
# math:hashtables/define/const
#

scoreboard objectives add HASHTABLES_FXP_SIZE dummy

scoreboard objectives add HASHTABLES_FXP_MAG dummy

scoreboard objectives add HASHTABLES_COS_SIZE dummy

scoreboard objectives add HASHTABLES_COS_MAX_VALUE dummy

scoreboard objectives add HASHTABLES_SIN_SIZE dummy

scoreboard objectives add HASHTABLES_SIN_MAX_VALUE dummy

scoreboard players set ::math::hashtables::const HASHTABLES_FXP_SIZE 8

scoreboard players set ::math::hashtables::const HASHTABLES_COS_SIZE 1024

scoreboard players set ::math::hashtables::const HASHTABLES_COS_MAX_VALUE 628318530

scoreboard players set ::math::hashtables::const HASHTABLES_SIN_SIZE 1024

scoreboard players set ::math::hashtables::const HASHTABLES_SIN_MAX_VALUE 628318530

# [Constexpr] Do not edit this
scoreboard players operation ::in pow = ::math::cordic::const HASHTABLES_FXP_SIZE
execute store result score ::math::cordic::const HASHTABLES_FXP_MAG run function math:utils/get_power_of_ten
