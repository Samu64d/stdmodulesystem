#
# collections:array3d/get_point
#
# Get the element at a 3d point position of a 3d array
#> Scores
#  @x (in): the x point value
#  @y (in): the y point value
#  @z (in): the z point value
#> Storage
#  @array (in): the 3d array
#  @element (out): the element
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run scoreboard players get ::in x
execute store result storage io: y int 1.0 run scoreboard players get ::in y
execute store result storage io: z int 1.0 run scoreboard players get ::in z
return run function collections:array3d/get_point/get with storage io:
