#
# data_observer:observed_data_descriptor/has_changed
#
# Check if an observed data descriptor data has changed
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#> Return data
#  boolean flag

return run data get storage io: observed_data_descriptor.state.changed 1.0
