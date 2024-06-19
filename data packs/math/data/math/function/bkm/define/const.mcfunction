#
# math:bkm/define/const
#

scoreboard objectives add BKM_FXP_SIZE dummy

scoreboard objectives add BKM_FXP_MAG dummy

scoreboard objectives add BKM_EXP_MAX_ITERATIONS dummy

scoreboard objectives add BKM_LOG_MAX_ITERATIONS dummy

scoreboard players set ::math::bkm::const BKM_FXP_SIZE 8

scoreboard players set ::math::bkm::const BKM_EXP_MAX_ITERATIONS 16

scoreboard players set ::math::bkm::const BKM_LOG_MAX_ITERATIONS 16

# [Constexpr] Do not edit this
scoreboard players operation ::in pow = ::math::bkm::const BKM_FXP_SIZE
execute store result score ::math::bkm::const BKM_FXP_MAG run function math:utils/get_power_of_ten
