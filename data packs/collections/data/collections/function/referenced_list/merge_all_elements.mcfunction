#
# collections:referenced_list/merge_all_elements
#
# Merge all elements from a list with a provided element. The element type must be "mergeable"
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

execute store result score ::collections::referenced_list success run function collections:referenced_list/merge_all_elements/merge with storage io:
execute store success score ::collections::referenced_list success if score ::collections::referenced_list success matches 1..
return run scoreboard players get ::collections::referenced_list success
