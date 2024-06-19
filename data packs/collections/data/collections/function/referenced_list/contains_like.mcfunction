#
# collections:referenced_list/contains_like
#
# Check if a list contains at least an element like the provided
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#> Return data
#  boolean flag

# Check for not empty list
execute store result score ::collections::referenced_list success run function collections:referenced_list/count_like
execute store success score ::collections::referenced_list success if score ::collections::referenced_list success matches 1..

# Return data
return run scoreboard players get ::collections::referenced_list success
