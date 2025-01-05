#
# collections:referenced_list/for_each_reverse/loop_init
#

# Set index
execute store result score ::collections::referenced_list index run function collections:referenced_list/get_length
scoreboard players remove ::collections::referenced_list index 1

# Start the loop
function collections:referenced_list/for_each_reverse/loop with storage io:
