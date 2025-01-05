#
# math:floating_point/from_storage/exponent/positive_branch_1
#

execute store result score ::math::floating_point number run data get storage io: value 0.000000001
execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE
execute if score ::math::floating_point number matches ..999999999 run function math:floating_point/from_storage/exponent/positive_1
execute if score ::math::floating_point number matches 1000000000.. run function math:floating_point/from_storage/exponent/positive_branch_2
