#
# data_observer:main/main
#

# Iterate throuth the observed data list
data modify storage io: callback set value "data_observer:main/process_observed_data"
function data_observer:observed_data_list/for_each
