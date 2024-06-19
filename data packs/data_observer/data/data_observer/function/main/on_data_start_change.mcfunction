#
# data_observer:main/on_data_start_change
#

# Get start event
function data_observer:observed_data_descriptor/get_start_event

# Call event
data modify storage io: callback set from storage io: start_event
function data_observer:main/common/callback with storage io:
