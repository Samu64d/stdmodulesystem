#
# math:floating_point/from_storage/exponent/positive_4
#

execute store result score ::math::floating_point number run data get storage io: value 0.000000000000000000000000000000000001
execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE
execute if score ::math::floating_point number matches ..999 run scoreboard players set ::math::floating_point p 30
execute if score ::math::floating_point number matches ..99 run scoreboard players set ::math::floating_point p 29
execute if score ::math::floating_point number matches ..9 run scoreboard players set ::math::floating_point p 28
