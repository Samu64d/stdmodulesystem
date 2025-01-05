#
# data_observer:main/on_data_tick_change
#

# Get tick event
function data_observer:observed_data_descriptor/get_tick_event

# Call event
data modify storage io: callback set from storage io: tick_event
function data_observer:main/common/callback with storage io:
