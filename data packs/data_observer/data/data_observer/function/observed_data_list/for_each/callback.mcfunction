#
# data_observer:observed_data_list/for_each/callback
#

# Call callback function
data modify storage io: observed_data_descriptor set from storage io: element
data modify storage io: callback set from storage data_observer:volatile temp_callback
function data_observer:observed_data_list/for_each/callback2 with storage io:
