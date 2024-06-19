#
# collections:set/remove/on_match_success
#

# Set index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::set index
function collections:set/common/remove_index with storage io:

# Set flag value
scoreboard players operation ::collections::set success = ::const TRUE

# Stop loop
scoreboard players set ::collections::set index 0
