#
# data_observer:main/on_data_end_change
#

# Get end event
function data_observer:observed_data_descriptor/get_end_event

# Call event
data modify storage io: callback set from storage io: end_event
function data_observer:main/common/callback with storage io:
