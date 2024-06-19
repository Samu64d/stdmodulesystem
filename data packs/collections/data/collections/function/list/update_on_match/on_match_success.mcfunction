#
# collections:list/update_on_match/on_match_success
#

# Set index
data modify storage io: element set from storage collections:volatile list.temp_element
execute store result storage io: index int 1.0 run scoreboard players get ::collections::list index
function collections:list/common/set_index with storage io:

# Update counter
scoreboard players add ::collections::list count 1
