#
# math:atan2
#
# Get the arctangent 2 value of a given ratio with fixed point precision
# If x > 0, atan2(y, x) = atan(y, x)
# If x < 0 and y >= 0, atan2(y, x) = atan(y, x) + pi
# If x < 0 and y < 0, atan2(y, x) = atan(y, x) – pi
# If x = 0 and y > 0, atan2(y, x) = 1/2 pi
# If x = 0 and y < 0, atan2(y, x) = -1/2 pi
# If x = 0 and y = 0, atan2(y, x) = undefined
#> Scores
#  @x (in): the x ratio value
#  @y (in): the y ration value
#> Return data
#  arctangent2 value

scoreboard players operation ::math x = ::in x
scoreboard players operation ::math y = ::in y

# Case 1: x >= 0
execute if score ::math x matches 1.. run function math:atan2/case_1

# Case 2: x < 0 and y >= 0
execute if score ::math x matches ..-1 if score ::math y matches 0.. run function math:atan2/case_2

# Case 3: x < 0 and y < 0
execute if score ::math x matches ..-1 if score ::math y matches ..-1 run function math:atan2/case_3

# Case 4: x = 0 and y > 0
execute if score ::math x matches 0 if score ::math y matches 0.. run function math:atan2/case_4

# Case 5: x = 0 and y < 0
execute if score ::math x matches 0 if score ::math y matches ..-1 run function math:atan2/case_5

# Return data
return run scoreboard players get ::math atan2
