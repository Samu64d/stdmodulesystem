#
# random:rand_binomial/limit_range
#

# Create floating point number min
scoreboard players operation ::in value = ::in min
function math:floating_point/from_score
data modify storage random:volatile min set from storage io: result

# Create floating point number max
scoreboard players operation ::in value = ::in max
function math:floating_point/from_score
data modify storage random:volatile max set from storage io: result

# Create floating point number 1
scoreboard players set ::in value 1
function math:floating_point/from_score
data modify storage random:volatile one_value set from storage io: result

# X * (max - min + 1) + min

data modify storage io: value0 set from storage random:volatile max
data modify storage io: value1 set from storage random:volatile min
function math:floating_point/sub

data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage random:volatile one_value
function math:floating_point/add

data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage random:volatile rand_binomial
function math:floating_point/mul

data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage random:volatile min
function math:floating_point/add
data modify storage random:volatile rand_binomial set from storage io: result
