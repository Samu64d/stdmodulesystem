#
# data_observer:observed_data_descriptor/get_prev_data
#
# Get the previous data of an observed data descriptor
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#  @prev_data (out): the previous data
#> Return void

data modify storage io: prev_data set from storage io: observed_data_descriptor.state.prev_data
