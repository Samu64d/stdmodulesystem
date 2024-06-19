#
# data_observer:observed_data_descriptor/new
#
# Create a new observed data descriptor
#> Storage
#  @path (in): the data path
#  @start_event (in): the start event callback
#  @tick_event (in): the tick event callback
#  @end_event (in): the end event callback
#  @observed_data_descriptor (out): the observed data descriptor
#> Return void

# Create object
data modify storage io: observed_data_descriptor set value {path: "null", start_event: "null", tick_event: "null", end_event: "null", state: {changed: false, prev_data: {}}}

# Set data path
data modify storage io: observed_data_descriptor.path set from storage io: path

# Set start event
data modify storage io: observed_data_descriptor.start_event set from storage io: start_event

# Set tick event
data modify storage io: observed_data_descriptor.tick_event set from storage io: tick_event

# Set end event
data modify storage io: observed_data_descriptor.end_event set from storage io: end_event

# Set data
function data_observer:observed_data_descriptor/get_data
data modify storage io: observed_data_descriptor.state.prev_data set from storage io: data
