#
# math:floating_point/common/recompose
#

data modify storage io: value set value {}
execute store result storage io: value.number int 1.0 run scoreboard players get ::math::floating_point number
execute store result storage io: value.p int 1.0 run scoreboard players get ::math::floating_point p
