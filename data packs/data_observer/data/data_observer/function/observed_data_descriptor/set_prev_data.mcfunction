#
# data_observer:observed_data_descriptor/set_prev_data
#
# Set the previous data of an observed data descriptor
#> Storage
#  @prev_data (in): the previous data
#  @observed_data_descriptor (inout): the observed data descriptor
#> Return void

data modify storage io: observed_data_descriptor.state.prev_data set from storage io: prev_data
