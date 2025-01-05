#
# math:floating_point/from_storage/exponent/positive_5
#

execute store result score ::math::floating_point number run data get storage io: value 1000000000000000000000000000000000000.0
execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE
execute if score ::math::floating_point number matches ..999999999 run scoreboard players set ::math::floating_point p -36
execute if score ::math::floating_point number matches ..99999999 run scoreboard players set ::math::floating_point p -37
execute if score ::math::floating_point number matches ..9999999 run scoreboard players set ::math::floating_point p -38
