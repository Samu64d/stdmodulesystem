#
# collections:list/set_all_elements
#
# Set all elements of a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return data
#  boolean flag

execute store success score ::collections::list success run data modify storage io: list[] set from storage io: element
return run scoreboard players get ::collections::list success
