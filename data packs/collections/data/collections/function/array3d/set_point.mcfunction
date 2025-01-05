#
# collections:array3d/set_point
#
# Set an element at a 3d point position inside a 3d array
#> Scores
#  @x (in): the x point value
#  @y (in): the y point value
#  @z (in): the z point value
#> Storage
#  @array (inout): the 3d array
#  @element (in): the element
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run scoreboard players get ::in x
execute store result storage io: y int 1.0 run scoreboard players get ::in y
execute store result storage io: z int 1.0 run scoreboard players get ::in z
return run function collections:array3d/set_point/set with storage io:
