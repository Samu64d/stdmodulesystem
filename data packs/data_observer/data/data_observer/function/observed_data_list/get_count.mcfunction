#
# data_observer:observed_data_list/get_count
#
# Get the count of observed data descriptor inside the observed data list
#> Return data
#  observed data descriptor count

data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
return run function collections:referenced_list/get_length
