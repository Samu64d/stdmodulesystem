#
# collections:referenced_list/update
#
# Update all elements matching the provided element from a list
#> Storage
#  @list_ref (in): the list reference
#  @element0_ref (in): the element to match reference
#  @element1_ref (in): the element to replace reference
#> Return data
#  updated element count

function collections:referenced_list/update/copy with storage io:

# Update on match
data modify storage io: callback set value "collections:referenced_list/update/match_handler"
data modify storage io: element_ref set from storage io: element1_ref
return run function collections:referenced_list/update_on_match
