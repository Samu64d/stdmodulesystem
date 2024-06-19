#
# math:floating_point/to_score/positive_p
#

execute if score ::math::floating_point p matches 0 store result score ::math::floating_point value run data get storage io: value.number 1.0
execute if score ::math::floating_point p matches 1 store result score ::math::floating_point value run data get storage io: value.number 10.0
execute if score ::math::floating_point p matches 2 store result score ::math::floating_point value run data get storage io: value.number 100.0
execute if score ::math::floating_point p matches 3 store result score ::math::floating_point value run data get storage io: value.number 1000.0
execute if score ::math::floating_point p matches 4 store result score ::math::floating_point value run data get storage io: value.number 10000.0
execute if score ::math::floating_point p matches 5 store result score ::math::floating_point value run data get storage io: value.number 100000.0
execute if score ::math::floating_point p matches 6 store result score ::math::floating_point value run data get storage io: value.number 1000000.0
execute if score ::math::floating_point p matches 7 store result score ::math::floating_point value run data get storage io: value.number 10000000.0
execute if score ::math::floating_point p matches 8 store result score ::math::floating_point value run data get storage io: value.number 100000000.0
execute if score ::math::floating_point p matches 9 store result score ::math::floating_point value run data get storage io: value.number 1000000000.0
execute if score ::math::floating_point p matches 10.. run scoreboard players operation ::math::floating_point value = ::const INT_MAX
