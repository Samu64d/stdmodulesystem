#
# collections:set/remove/loop
#

# Get index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::set index
function collections:set/common/get_index with storage io:

# Check for equal elements
execute store success score ::collections::set temp0 run data modify storage io: element set from storage collections:volatile set.temp_element

# Remove the element from the set on check success
execute if score ::collections::set temp0 = ::const FALSE run function collections:set/remove/on_match_success

# Check for set limit
scoreboard players remove ::collections::set index 1
execute if score ::collections::set index matches 0.. run function collections:set/remove/loop with storage io:

# Loop
