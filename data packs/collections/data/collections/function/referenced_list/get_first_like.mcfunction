#
# collections:referenced_list/get_first_like
#
# Get the last element from a list like the provided
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#  @element (out): the element
#> Return data
#  boolean flag

# Get like elements
execute store result score ::collections::referenced_list success run function collections:referenced_list/get_like

# Get first element
execute if score ::collections::referenced_list success = ::const TRUE run data modify storage io: element set from storage io: found_list[0]

# Return data
return run scoreboard players get ::collections::referenced_list success
