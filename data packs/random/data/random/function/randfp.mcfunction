#
# random:randfp
#
# Generate a pseudorandom number between 0 and 1 with floating point precision
#> Storage
#  @result (out): the number
#> Return void

data modify storage io: min set value 0
scoreboard players operation ::random temp0 = ::const INT_MAX
scoreboard players remove ::random temp0 1
execute store result storage io: max int 1.0 run scoreboard players get ::random temp0
execute store result score ::in value run function random:common/gen_rand_32 with storage io:

# Create floating point number value
function math:floating_point/from_score
data modify storage random:volatile value set from storage io: result

# Create floating point number INT_MAX
scoreboard players operation ::in value = ::random temp0
function math:floating_point/from_score

# Interpolate beetween 0 and 1

# T = value / INT_MAX
data modify storage io: value0 set from storage random:volatile value
data modify storage io: value1 set from storage io: result
function math:floating_point/div
