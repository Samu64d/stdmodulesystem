#
# collections:referenced_list/pick_random
#
# Get a random element from a list
#> Storage
#  @list_ref (in): the list reference
#  @element (out): the element
#> Return data
#  boolean flag

# Get length
execute store result score ::collections::referenced_list length run function collections:referenced_list/get_length

# Check for zero length
execute if score ::collections::referenced_list length matches 0 run return run scoreboard players get ::const FALSE

# Randomize index
scoreboard players set ::in min 0
scoreboard players operation ::in max = ::collections::referenced_list length
scoreboard players remove ::in max 1
execute store result storage io: index int 1.0 run function random:rand

# Get index
function collections:referenced_list/common/get_index with storage io:

# Return data
return run scoreboard players get ::const TRUE
