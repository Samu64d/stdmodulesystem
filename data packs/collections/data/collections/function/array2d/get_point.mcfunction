#
# collections:array2d/get_point
#
# Get the element at a 2d point position of a 2d array
#> Scores
#  @x (in): the x point value
#  @y (in): the y point value
#> Storage
#  @array (in): the 2d array
#  @element (out): the element
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run scoreboard players get ::in x
execute store result storage io: y int 1.0 run scoreboard players get ::in y
return run function collections:array2d/get_point/get with storage io:
