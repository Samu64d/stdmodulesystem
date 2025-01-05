#
# obj:runtime/classes_register
#

# Iterate through the class info map
data modify storage io: callback set value "obj:runtime/class_register"
function obj:runtime/class_info_map/for_each
