#
# collections:referenced_array/get_index
#
# Get the element at an index position of an array
#> Scores
#  @index (in): the index
#> Storage
#  @array_ref (in): the array reference
#  @element (out): the element
#> Return data
#  boolean flag

execute store result storage io: index int 1.0 run scoreboard players get ::in index
return run function collections:referenced_array/get_index/get with storage io:
