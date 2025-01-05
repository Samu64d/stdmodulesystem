#
# math:floating_point/to_storage_double/31_32
#

execute if score ::math::floating_point p matches 31 store result storage io: result double 10000000000000000000000000000000.0 run scoreboard players get ::math::floating_point number
execute if score ::math::floating_point p matches 32 store result storage io: result double 100000000000000000000000000000000.0 run scoreboard players get ::math::floating_point number
