#
# math:floating_point/sqrt/loop
#

data modify storage math:volatile floating_point.prev_sqrt set from storage math:volatile floating_point.sqrt

# Sqrt(n) = (x + (n / x)) / 2
data modify storage io: value0 set from storage math:volatile floating_point.sqrt_argument
data modify storage io: value1 set from storage math:volatile floating_point.sqrt
function math:floating_point/div
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:volatile floating_point.sqrt
function math:floating_point/add
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:static floating_point.TWO
function math:floating_point/div
data modify storage math:volatile floating_point.sqrt set from storage io: result

data modify storage io: value0 set from storage math:volatile floating_point.prev_sqrt
data modify storage io: value1 set from storage math:volatile floating_point.sqrt
function math:floating_point/sub
data modify storage io: value set from storage io: result
function math:floating_point/common/decompose
scoreboard players add ::math::floating_point sqrt_iterations 1
execute unless score ::math::floating_point number matches -1..1 if score ::math::floating_point sqrt_iterations < ::math::floating_point::const SQRT_MAX_ITERATIONS run function math:floating_point/sqrt/loop

# Loop
