#
# collections:referenced_set/remove/on_match_success
#

# Set index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_set index
function collections:referenced_set/common/remove_index with storage io:

# Set flag value
scoreboard players operation ::collections::referenced_set success = ::const TRUE

# Stop loop
scoreboard players set ::collections::referenced_set index 0
