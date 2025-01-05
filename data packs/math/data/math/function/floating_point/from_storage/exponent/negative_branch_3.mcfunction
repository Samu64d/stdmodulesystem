#
# math:floating_point/from_storage/exponent/negative_branch_3
#

execute store result score ::math::floating_point number run data get storage io: value 1000000000000000000.0
execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE
execute if score ::math::floating_point number matches 1.. run function math:floating_point/from_storage/exponent/negative_3
execute if score ::math::floating_point number matches 0 run function math:floating_point/from_storage/exponent/negative_branch_4
