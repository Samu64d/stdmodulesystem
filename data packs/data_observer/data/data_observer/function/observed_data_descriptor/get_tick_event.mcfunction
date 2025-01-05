#
# data_observer:observed_data_descriptor/get_tick_event
#
# Get the tick event of an observed data descriptor
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#  @tick_event (out): the tick event
#> Return void

data modify storage io: tick_event set from storage io: observed_data_descriptor.tick_event
