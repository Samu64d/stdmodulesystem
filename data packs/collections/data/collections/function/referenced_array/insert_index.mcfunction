#
# collections:referenced_array/insert_index
#
# Insert an element at an index position of an array
#> Scores
#  @index (in): the index
#> Storage
#  @array_ref (in): the array reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

execute store result storage io: index int 1.0 run scoreboard players get ::in index
return run function collections:referenced_array/insert_index/insert with storage io:
