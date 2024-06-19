#
# collections:list/remove_on_match/on_match_success
#

# Set index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::list index
function collections:list/common/remove_index with storage io:

# Update counter
scoreboard players add ::collections::list count 1
