#
# math:floating_point/from_storage/number/31_32
#

execute if score ::math::floating_point p matches 31 store result score ::math::floating_point number run data get storage io: value 0.0000000000000000000000000000001
execute if score ::math::floating_point p matches 32 store result score ::math::floating_point number run data get storage io: value 0.00000000000000000000000000000001
