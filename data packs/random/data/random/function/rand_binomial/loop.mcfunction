#
# random:rand_binomial/loop
#

# Generate a random floating point number
function random:randfp

# Add values
data modify storage io: value0 set from storage random:volatile rand_binomial
data modify storage io: value1 set from storage io: result
function math:floating_point/add
data modify storage random:volatile rand_binomial set from storage io: result

# Update loop variable
scoreboard players remove ::in n 1

execute if score ::in n matches 1.. run function random:rand_binomial/loop

# Loop
