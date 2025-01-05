#
# data_observer:observed_data_list/for_each
#
# Iterate throuth the observed data list
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage data_observer:volatile temp_callback set from storage io: callback

# Iterate through the observed data list
data modify storage io: list set from storage data_observer:data observed_data_list
data modify storage io: callback set value "data_observer:observed_data_list/for_each/callback"
function collections:list/for_each
