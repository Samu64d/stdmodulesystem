#
# collections:list/pick_random
#
# Get a random element from a list
#> Storage
#  @list (in): the list
#  @element (out): the element
#> Return data
#  boolean flag

# Get length
execute store result score ::collections::list length run function collections:list/get_length

# Check for zero length
execute if score ::collections::list length matches 0 run return run scoreboard players get ::const FALSE

# Randomize index
scoreboard players set ::in min 0
scoreboard players operation ::in max = ::collections::list length
scoreboard players remove ::in max 1
execute store result storage io: index int 1.0 run function random:rand

# Get index
function collections:list/common/get_index with storage io:

# Return data
return run scoreboard players get ::const TRUE
