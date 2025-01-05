#
# collections:array/insert_index
#
# Insert an element at an index position of an array
#> Scores
#  @index (in): the index
#> Storage
#  @array (inout): the array
#  @element (in): the element
#> Return data
#  boolean flag

execute store result storage io: index int 1.0 run scoreboard players get ::in index
return run function collections:array/insert_index/insert with storage io:
