#
# server:management/player_list/for_each_reverse/callback
#

# Call callback function
data modify storage io: player_descriptor set from storage io: element
data modify storage io: callback set from storage server:volatile management.temp_callback
function server:management/player_list/for_each_reverse/callback2 with storage io:
