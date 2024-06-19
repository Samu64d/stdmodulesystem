#
# collections:list/update
#
# Update all elements matching the provided element from a list
#> Storage
#  @list (inout): the list
#  @element0 (in): the element to match
#  @element1 (in): the element to replace
#> Return data
#  updated element count

# Update on match
data modify storage io: callback set value "collections:list/update/match_handler"
data modify storage io: element set from storage io: element1
return run function collections:list/update_on_match
