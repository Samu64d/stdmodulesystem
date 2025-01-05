#
# collections:list/get_first_on_match
#
# Get the first elements of a list matching a condition
#> Storage
#  @list (in): the list
#  @callback (in): the callback function
#  @element (out): the element
#> Return data
#  boolean flag

# Create found list
data modify storage io: found_list set value []

# Check for not empty list
execute unless function collections:list/is_empty run function collections:list/get_first_on_match/loop_init

# Check for not empty found list
execute store result score ::collections::list success run data get storage io: found_list
execute store success score ::collections::list success if score ::collections::list success matches 1..

# Get first element
execute if score ::collections::list success = ::const TRUE run data modify storage io: element set from storage io: found_list[0]

# Return data
return run scoreboard players get ::collections::list success
