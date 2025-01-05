#
# string:replace/remove_last_found
#

# Update found list
scoreboard players set ::in index -1
data modify storage io: array set from storage string:volatile found_list
function collections:array/remove_index
data modify storage string:volatile found_list set from storage io: array

# Reset search string index
scoreboard players operation ::string search_string_index = ::string search_string_size
