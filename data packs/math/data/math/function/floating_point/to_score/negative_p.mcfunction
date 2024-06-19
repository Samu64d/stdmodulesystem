#
# math:floating_point/to_score/negative_p
#

execute if score ::math::floating_point p matches -10.. run scoreboard players set ::math::floating_point value 0
execute if score ::math::floating_point p matches -9 store result score ::math::floating_point value run data get storage io: value.number 0.000000001
execute if score ::math::floating_point p matches -8 store result score ::math::floating_point value run data get storage io: value.number 0.00000001
execute if score ::math::floating_point p matches -7 store result score ::math::floating_point value run data get storage io: value.number 0.0000001
execute if score ::math::floating_point p matches -6 store result score ::math::floating_point value run data get storage io: value.number 0.000001
execute if score ::math::floating_point p matches -5 store result score ::math::floating_point value run data get storage io: value.number 0.00001
execute if score ::math::floating_point p matches -4 store result score ::math::floating_point value run data get storage io: value.number 0.0001
execute if score ::math::floating_point p matches -3 store result score ::math::floating_point value run data get storage io: value.number 0.001
execute if score ::math::floating_point p matches -2 store result score ::math::floating_point value run data get storage io: value.number 0.01
execute if score ::math::floating_point p matches -1 store result score ::math::floating_point value run data get storage io: value.number 0.1
