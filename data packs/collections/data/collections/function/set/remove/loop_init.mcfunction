#
# collections:set/remove/loop_init
#

# Set index
execute store result score ::collections::set index run function collections:set/get_size
scoreboard players remove ::collections::set index 1

# Start the loop
function collections:set/remove/loop with storage io:
