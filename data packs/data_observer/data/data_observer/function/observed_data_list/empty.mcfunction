#
# data_observer:observed_data_list/empty
#
# Empty the observed data list
#> Return void

data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
function collections:referenced_list/empty
