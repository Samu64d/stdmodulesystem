#
# data_observer:observed_data_descriptor/get_path
#
# Get the data path of an observed data descriptor
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#  @path (out): the data path
#> Return void

data modify storage io: path set from storage io: observed_data_descriptor.path
