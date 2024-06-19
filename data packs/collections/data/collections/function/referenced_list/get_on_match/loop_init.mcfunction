#
# collections:referenced_list/get_on_match/loop_init
#

# Set index
scoreboard players set ::collections::referenced_list index 0

# Start the loop
scoreboard players operation ::collections::referenced_list search_only_one = ::const FALSE
function collections:referenced_list/get_on_match/loop with storage io:
