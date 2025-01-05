#
# collections:referenced_list/remove
#
# Remove all elements matching the provided element from a list
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

function collections:referenced_list/remove/copy with storage io:

# Remove on match
data modify storage io: callback set value "collections:referenced_list/remove/match_handler"
return run function collections:referenced_list/remove_on_match
