#
# collections:referenced_list/remove_like
#
# Remove all elements from a list like the provided
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#> Return data
#  number of removed elements

# Check for not empty list
execute unless function collections:referenced_list/is_empty run return run function collections:referenced_list/remove_like/remove with storage io:

# Return zero
return 0
