#
# string:replace/remove_first_found
#

# Update found list
scoreboard players set ::in index 0
data modify storage io: array set from storage string:volatile found_list
function collections:array/remove_index
data modify storage string:volatile found_list set from storage io: array

# Reset replace string index
scoreboard players set ::string replace_string_index 0
scoreboard players operation ::string accumulated_places += ::string replace_string_size
scoreboard players operation ::string accumulated_places -= ::string search_string_size
