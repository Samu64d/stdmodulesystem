#
# collections:referenced_list/count_like
#
# Count how many times an element like the provided appears in a list
#> Storage
#  @list_ref (in): the list reference
#  @like_element (in): the like element
#> Return data
#  number of matched elements

# Get like
function collections:referenced_list/get_like with storage io:

# Return found list size
return run data get storage io: found_list
