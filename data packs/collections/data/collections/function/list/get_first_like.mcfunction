#
# collections:list/get_first_like
#
# Get the first element from a list like the provided
#> Storage
#  @list (in): the list
#  @like_element (in): the like element
#  @element (out): the element
#> Return data
#  boolean flag

# Get like elements
execute store result score ::collections::list success run function collections:list/get_like

# Get first element
execute if score ::collections::list success = ::const TRUE run data modify storage io: element set from storage io: found_list[0]

# Return data
return run scoreboard players get ::collections::list success
