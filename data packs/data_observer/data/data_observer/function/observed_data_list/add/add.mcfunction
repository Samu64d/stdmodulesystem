#
# data_observer:observed_data_list/add/add
#

# Add the element to the observed data list
data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
data modify storage io: element_ref set value "storage io: observed_data_descriptor"
function collections:referenced_list/add_last
