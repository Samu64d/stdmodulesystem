#
# collections:list/remove
#
# Remove all elements matching the provided element from a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return data
#  boolean flag

data modify storage collections:volatile list.temp_element set from storage io: element

# Remove on match
data modify storage io: callback set value "collections:list/remove/match_handler"
return run function collections:list/remove_on_match
