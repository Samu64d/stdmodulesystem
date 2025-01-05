#
# obj:runtime/object_native_destructor
#

# Invoke class destructor
data modify storage io: method set from storage obj:static runtime.CLASS_DESTRUCTOR_NAME
function obj:invoke
