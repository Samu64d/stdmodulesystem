#
# collections:referenced_list/get_like
#
# Get a list of elements from a list like the provided
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#  @found_list (out): the list of founded elements
#> Return data
#  boolean flag

# Create found list
data modify storage io: found_list set value []

# Check for not empty list
execute unless function collections:referenced_list/is_empty run function collections:referenced_list/get_like/get with storage io:

# Check for not empty found list
execute store result score ::collections::referenced_list success run data get storage io: found_list
execute store success score ::collections::referenced_list success if score ::collections::referenced_list success matches 1..

# Return data
return run scoreboard players get ::collections::referenced_list success
