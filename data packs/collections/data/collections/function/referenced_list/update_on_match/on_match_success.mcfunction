#
# collections:referenced_list/update_on_match/on_match_success
#

# Set index
data modify storage io: element set from storage collections:volatile referenced_list.temp_element
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_list index
function collections:referenced_list/common/set_index with storage io:

# Update counter
scoreboard players add ::collections::referenced_list count 1
