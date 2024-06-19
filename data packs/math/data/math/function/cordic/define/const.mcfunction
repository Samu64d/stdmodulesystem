#
# math:cordic/define/const
#

scoreboard objectives add CRDC_FXP_IN_SIZE dummy

scoreboard objectives add CRDC_FXP_IN_MAG dummy

scoreboard objectives add CRDC_FXP_OUT_SIZE dummy

scoreboard objectives add CRDC_FXP_OUT_MAG dummy

scoreboard objectives add CRDC_MAX_ITERATIONS dummy

# Values of 1 / K
scoreboard objectives add K_I0 dummy
scoreboard objectives add K_I1 dummy
scoreboard objectives add K_I2 dummy
scoreboard objectives add K_I3 dummy
scoreboard objectives add K_I4 dummy
scoreboard objectives add K_I5 dummy
scoreboard objectives add K_I6 dummy
scoreboard objectives add K_I7 dummy
scoreboard objectives add K_I8 dummy
scoreboard objectives add K_I9 dummy
scoreboard objectives add K_I10 dummy
scoreboard objectives add K_I11 dummy
scoreboard objectives add K_I12 dummy
scoreboard objectives add K_I13 dummy
scoreboard objectives add K_I14 dummy
scoreboard objectives add K_I15 dummy
scoreboard objectives add K_I16 dummy
scoreboard objectives add K_I17 dummy
scoreboard objectives add K_I18 dummy
scoreboard objectives add K_I19 dummy
scoreboard objectives add K_I20 dummy
scoreboard objectives add K_I21 dummy
scoreboard objectives add K_I22 dummy
scoreboard objectives add K_I23 dummy
scoreboard objectives add K_I24 dummy

# Values of 1 / K*
scoreboard objectives add KH_I0 dummy
scoreboard objectives add KH_I1 dummy
scoreboard objectives add KH_I2 dummy
scoreboard objectives add KH_I3 dummy
scoreboard objectives add KH_I4 dummy
scoreboard objectives add KH_I5 dummy
scoreboard objectives add KH_I6 dummy
scoreboard objectives add KH_I7 dummy
scoreboard objectives add KH_I8 dummy
scoreboard objectives add KH_I9 dummy
scoreboard objectives add KH_I10 dummy
scoreboard objectives add KH_I11 dummy
scoreboard objectives add KH_I12 dummy
scoreboard objectives add KH_I13 dummy
scoreboard objectives add KH_I14 dummy
scoreboard objectives add KH_I15 dummy
scoreboard objectives add KH_I16 dummy
scoreboard objectives add KH_I17 dummy
scoreboard objectives add KH_I18 dummy
scoreboard objectives add KH_I19 dummy
scoreboard objectives add KH_I20 dummy
scoreboard objectives add KH_I21 dummy
scoreboard objectives add KH_I22 dummy
scoreboard objectives add KH_I23 dummy
scoreboard objectives add KH_I24 dummy

scoreboard players set ::math::cordic::const CRDC_FXP_IN_SIZE 8

scoreboard players set ::math::cordic::const CRDC_FXP_OUT_SIZE 8

scoreboard players set ::math::cordic::const CRDC_MAX_ITERATIONS 24

scoreboard players set ::math::cordic::const K_I0 70710678
scoreboard players set ::math::cordic::const K_I1 63245553
scoreboard players set ::math::cordic::const K_I2 61357199
scoreboard players set ::math::cordic::const K_I3 60883391
scoreboard players set ::math::cordic::const K_I4 60764825
scoreboard players set ::math::cordic::const K_I5 60735177
scoreboard players set ::math::cordic::const K_I6 60727764
scoreboard players set ::math::cordic::const K_I7 60725911
scoreboard players set ::math::cordic::const K_I8 60725447
scoreboard players set ::math::cordic::const K_I9 60725332
scoreboard players set ::math::cordic::const K_I10 60725303
scoreboard players set ::math::cordic::const K_I11 60725295
scoreboard players set ::math::cordic::const K_I12 60725294
scoreboard players set ::math::cordic::const K_I13 60725293
scoreboard players set ::math::cordic::const K_I14 60725293
scoreboard players set ::math::cordic::const K_I15 60725293
scoreboard players set ::math::cordic::const K_I16 60725293
scoreboard players set ::math::cordic::const K_I17 60725293
scoreboard players set ::math::cordic::const K_I18 60725293
scoreboard players set ::math::cordic::const K_I19 60725293
scoreboard players set ::math::cordic::const K_I20 60725293
scoreboard players set ::math::cordic::const K_I21 60725293
scoreboard players set ::math::cordic::const K_I22 60725293
scoreboard players set ::math::cordic::const K_I23 60725293
scoreboard players set ::math::cordic::const K_I24 60725293

scoreboard players set ::math::cordic::const KH_I0 115470053
scoreboard players set ::math::cordic::const KH_I1 119256958
scoreboard players set ::math::cordic::const KH_I2 120199716
scoreboard players set ::math::cordic::const KH_I3 120671087
scoreboard players set ::math::cordic::const KH_I4 120730052
scoreboard players set ::math::cordic::const KH_I5 120744792
scoreboard players set ::math::cordic::const KH_I6 120748477
scoreboard players set ::math::cordic::const KH_I7 120749398
scoreboard players set ::math::cordic::const KH_I8 120749629
scoreboard players set ::math::cordic::const KH_I9 120749686
scoreboard players set ::math::cordic::const KH_I10 120749701
scoreboard players set ::math::cordic::const KH_I11 120749704
scoreboard players set ::math::cordic::const KH_I12 120749706
scoreboard players set ::math::cordic::const KH_I13 120749706
scoreboard players set ::math::cordic::const KH_I14 120749706
scoreboard players set ::math::cordic::const KH_I15 120749706
scoreboard players set ::math::cordic::const KH_I16 120749706
scoreboard players set ::math::cordic::const KH_I17 120749706
scoreboard players set ::math::cordic::const KH_I18 120749706
scoreboard players set ::math::cordic::const KH_I19 120749706
scoreboard players set ::math::cordic::const KH_I20 120749706
scoreboard players set ::math::cordic::const KH_I21 120749706
scoreboard players set ::math::cordic::const KH_I22 120749706
scoreboard players set ::math::cordic::const KH_I23 120749706
scoreboard players set ::math::cordic::const KH_I24 120749706

# [Constexpr] Do not edit this
scoreboard players operation ::in pow = ::math::cordic::const CRDC_FXP_IN_SIZE
execute store result score ::math::cordic::const CRDC_FXP_IN_MAG run function math:utils/get_power_of_ten

# [Constexpr] Do not edit this
scoreboard players operation ::in pow = ::math::cordic::const CRDC_FXP_OUT_SIZE
execute store result score ::math::cordic::const CRDC_FXP_OUT_MAG run function math:utils/get_power_of_ten
