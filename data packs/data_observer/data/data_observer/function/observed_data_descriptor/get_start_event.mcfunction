#
# data_observer:observed_data_descriptor/get_start_event
#
# Get the start event of an observed data descriptor
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#  @start_event (out): the start event
#> Return void

data modify storage io: start_event set from storage io: observed_data_descriptor.start_event
