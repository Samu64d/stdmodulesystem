#
# collections:list/count_like
#
# Count how many times an element like the provided appears in a list
#> Storage
#  @list (in): the list
#  @like_element (in): the like element
#> Return data
#  number of matched elements

# Get like
function collections:list/get_like with storage io:

# Return found list size
return run data get storage io: found_list
