#
# collections:referenced_set/remove/loop_init
#

# Set index
execute store result score ::collections::referenced_set index run function collections:referenced_set/get_size
scoreboard players remove ::collections::referenced_set index 1

# Start the loop
function collections:referenced_set/remove/loop with storage io:
