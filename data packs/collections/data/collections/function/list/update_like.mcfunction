#
# collections:list/update_like
#
# Update all elements from a list like the provided
#> Storage
#  @list (in): the list
#  @like_element (in): the like element
#  @element (in): the element to replace
#> Return data
#  number of updated elements

# Check for not empty list
execute unless function collections:list/is_empty run return run function collections:list/update_like/update with storage io:

# Return zero
return 0
