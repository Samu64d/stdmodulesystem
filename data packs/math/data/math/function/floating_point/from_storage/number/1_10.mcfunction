#
# math:floating_point/from_storage/number/1_10
#

execute if score ::math::floating_point p matches 1 store result score ::math::floating_point number run data get storage io: value 0.1
execute if score ::math::floating_point p matches 2 store result score ::math::floating_point number run data get storage io: value 0.01
execute if score ::math::floating_point p matches 3 store result score ::math::floating_point number run data get storage io: value 0.001
execute if score ::math::floating_point p matches 4 store result score ::math::floating_point number run data get storage io: value 0.0001
execute if score ::math::floating_point p matches 5 store result score ::math::floating_point number run data get storage io: value 0.00001
execute if score ::math::floating_point p matches 6 store result score ::math::floating_point number run data get storage io: value 0.000001
execute if score ::math::floating_point p matches 7 store result score ::math::floating_point number run data get storage io: value 0.0000001
execute if score ::math::floating_point p matches 8 store result score ::math::floating_point number run data get storage io: value 0.00000001
execute if score ::math::floating_point p matches 9 store result score ::math::floating_point number run data get storage io: value 0.000000001
execute if score ::math::floating_point p matches 10 store result score ::math::floating_point number run data get storage io: value 0.0000000001
