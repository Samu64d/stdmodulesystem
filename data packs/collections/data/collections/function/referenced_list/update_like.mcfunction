#
# collections:referenced_list/update_like
#
# Update all elements from a list like the provided
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#  @element_ref (in): the element to replace
#> Return data
#  number of updated elements

# Check for not empty list
execute unless function collections:referenced_list/is_empty run return run function collections:referenced_list/update_like/update with storage io:

# Return zero
return 0
