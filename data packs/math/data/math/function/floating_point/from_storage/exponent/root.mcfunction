#
# math:floating_point/from_storage/exponent/root
#

execute store result score ::math::floating_point temp0 run data get storage io: value 1.0
execute if score ::math::floating_point temp0 matches ..-1 run scoreboard players operation ::math::floating_point temp0 *= ::const NEGONE
execute if score ::math::floating_point temp0 matches ..999999999 run function math:floating_point/from_storage/exponent/negative_branch_1
execute if score ::math::floating_point temp0 matches 1000000000.. run function math:floating_point/from_storage/exponent/positive_branch_1
