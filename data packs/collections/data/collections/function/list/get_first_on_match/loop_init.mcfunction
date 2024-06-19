#
# collections:list/get_first_on_match/loop_init
#

# Set index
scoreboard players set ::collections::list index 0

# Start the loop
scoreboard players operation ::collections::list search_only_one = ::const TRUE
function collections:list/get_on_match/loop with storage io:
