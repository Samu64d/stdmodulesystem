#
# data_observer:api/observe
#
# Observe a data path
#> Storage
#  @path (in): the data path
#  @start_event (in): the start event callback
#  @tick_event (in): the tick event callback
#  @end_event (in): the end event callback
#> Return void

# Create the observed data descriptor
function data_observer:observed_data_descriptor/new

# Add to the observed data list
function data_observer:observed_data_list/add
