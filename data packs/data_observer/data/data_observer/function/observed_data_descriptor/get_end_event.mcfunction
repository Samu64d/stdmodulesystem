#
# data_observer:observed_data_descriptor/get_end_event
#
# Get the end event of an observed data descriptor
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#  @end_event (out): the end event
#> Return void

data modify storage io: end_event set from storage io: observed_data_descriptor.end_event
