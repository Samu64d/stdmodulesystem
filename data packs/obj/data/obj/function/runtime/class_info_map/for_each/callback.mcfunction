#
# obj:runtime/class_info_map/for_each/callback
#

# Call callback function
data modify storage io: class_info set from storage io: value
data modify storage io: callback set from storage obj:volatile runtime.temp_callback
function obj:runtime/class_info_map/for_each/callback2 with storage io:
