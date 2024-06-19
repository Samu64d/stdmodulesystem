#
# math:cordic/boot/set_scale_factors
#

# 1 / K
scoreboard objectives add CRDC_K_FACTOR dummy

# 1 / K*
scoreboard objectives add CRDC_KH_FACTOR dummy

execute if score ::math::cordic::const CRDC_ITERATIONS matches 0 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I0
execute if score ::math::cordic::const CRDC_ITERATIONS matches 1 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I1
execute if score ::math::cordic::const CRDC_ITERATIONS matches 2 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I2
execute if score ::math::cordic::const CRDC_ITERATIONS matches 3 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I3
execute if score ::math::cordic::const CRDC_ITERATIONS matches 4 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I4
execute if score ::math::cordic::const CRDC_ITERATIONS matches 5 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I5
execute if score ::math::cordic::const CRDC_ITERATIONS matches 6 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I6
execute if score ::math::cordic::const CRDC_ITERATIONS matches 7 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I7
execute if score ::math::cordic::const CRDC_ITERATIONS matches 8 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I8
execute if score ::math::cordic::const CRDC_ITERATIONS matches 9 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I9
execute if score ::math::cordic::const CRDC_ITERATIONS matches 10 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I10
execute if score ::math::cordic::const CRDC_ITERATIONS matches 11 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I11
execute if score ::math::cordic::const CRDC_ITERATIONS matches 12 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I12
execute if score ::math::cordic::const CRDC_ITERATIONS matches 13 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I13
execute if score ::math::cordic::const CRDC_ITERATIONS matches 14 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I14
execute if score ::math::cordic::const CRDC_ITERATIONS matches 15 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I15
execute if score ::math::cordic::const CRDC_ITERATIONS matches 16 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I16
execute if score ::math::cordic::const CRDC_ITERATIONS matches 17 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I17
execute if score ::math::cordic::const CRDC_ITERATIONS matches 18 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I18
execute if score ::math::cordic::const CRDC_ITERATIONS matches 19 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I19
execute if score ::math::cordic::const CRDC_ITERATIONS matches 20 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I20
execute if score ::math::cordic::const CRDC_ITERATIONS matches 21 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I21
execute if score ::math::cordic::const CRDC_ITERATIONS matches 22 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I22
execute if score ::math::cordic::const CRDC_ITERATIONS matches 23 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I23
execute if score ::math::cordic::const CRDC_ITERATIONS matches 24 run scoreboard players operation ::math::cordic::const CRDC_K_FACTOR = ::math::cordic::const K_I24

execute if score ::math::cordic::const CRDC_ITERATIONS matches 0 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I0
execute if score ::math::cordic::const CRDC_ITERATIONS matches 1 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I1
execute if score ::math::cordic::const CRDC_ITERATIONS matches 2 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I2
execute if score ::math::cordic::const CRDC_ITERATIONS matches 3 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I3
execute if score ::math::cordic::const CRDC_ITERATIONS matches 4 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I4
execute if score ::math::cordic::const CRDC_ITERATIONS matches 5 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I5
execute if score ::math::cordic::const CRDC_ITERATIONS matches 6 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I6
execute if score ::math::cordic::const CRDC_ITERATIONS matches 7 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I7
execute if score ::math::cordic::const CRDC_ITERATIONS matches 8 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I8
execute if score ::math::cordic::const CRDC_ITERATIONS matches 9 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I9
execute if score ::math::cordic::const CRDC_ITERATIONS matches 10 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I10
execute if score ::math::cordic::const CRDC_ITERATIONS matches 11 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I11
execute if score ::math::cordic::const CRDC_ITERATIONS matches 12 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I12
execute if score ::math::cordic::const CRDC_ITERATIONS matches 13 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I13
execute if score ::math::cordic::const CRDC_ITERATIONS matches 14 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I14
execute if score ::math::cordic::const CRDC_ITERATIONS matches 15 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I15
execute if score ::math::cordic::const CRDC_ITERATIONS matches 16 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I16
execute if score ::math::cordic::const CRDC_ITERATIONS matches 17 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I17
execute if score ::math::cordic::const CRDC_ITERATIONS matches 18 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I18
execute if score ::math::cordic::const CRDC_ITERATIONS matches 19 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I19
execute if score ::math::cordic::const CRDC_ITERATIONS matches 20 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I20
execute if score ::math::cordic::const CRDC_ITERATIONS matches 21 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I21
execute if score ::math::cordic::const CRDC_ITERATIONS matches 22 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I22
execute if score ::math::cordic::const CRDC_ITERATIONS matches 23 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I23
execute if score ::math::cordic::const CRDC_ITERATIONS matches 24 run scoreboard players operation ::math::cordic::const CRDC_KH_FACTOR = ::math::cordic::const KH_I24
