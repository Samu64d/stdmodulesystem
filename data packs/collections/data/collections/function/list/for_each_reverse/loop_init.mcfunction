#
# collections:list/for_each_reverse/loop_init
#

# Set index
execute store result score ::collections::list index run function collections:list/get_length
scoreboard players remove ::collections::list index 1

# Start the loop
function collections:list/for_each_reverse/loop with storage io:
