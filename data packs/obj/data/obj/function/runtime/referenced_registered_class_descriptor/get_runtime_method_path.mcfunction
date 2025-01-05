#
# obj:runtime/referenced_registered_class_descriptor/get_runtime_method_path
#
# Get a runtime method path of a registered class descriptor
#> Storage
#  @registered_class_descriptor_ref (in): the registered class descriptor reference
#  @runtime_method_name (in): the runtime method name
#  @runtime_method_path (out): the runtime method path
#> Return data
#  boolean flag

data remove storage io: runtime_method_path
return run function obj:runtime/referenced_registered_class_descriptor/get_runtime_method_path/get with storage io:
