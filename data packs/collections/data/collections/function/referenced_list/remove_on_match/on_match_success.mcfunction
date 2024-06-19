#
# collections:referenced_list/remove_on_match/on_match_success
#

# Set index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_list index
function collections:referenced_list/common/remove_index with storage io:

# Set flag value
scoreboard players add ::collections::referenced_list count 1
