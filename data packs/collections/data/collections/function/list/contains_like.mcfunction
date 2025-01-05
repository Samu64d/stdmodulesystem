#
# collections:list/contains_like
#
# Check if a list contains at least an element like the provided
#> Storage
#  @list (in): the list
#  @like_element (in): the like element
#> Return data
#  boolean flag

# Check for not empty list
execute store result score ::collections::list success run function collections:list/count_like
execute store success score ::collections::list success if score ::collections::list success matches 1..

# Return data
return run scoreboard players get ::collections::list success
