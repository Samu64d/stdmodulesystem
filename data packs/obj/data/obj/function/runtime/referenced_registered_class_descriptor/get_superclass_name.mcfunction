#
# obj:runtime/referenced_registered_class_descriptor/get_superclass_name
#
# Get the superclass name of a registered class descriptor
#> Storage
#  @registered_class_descriptor_ref (in): the registered class descriptor reference
#  @supeclass_name (out): the supeclass name
#> Return data
#  boolean flag

data remove storage io: superclass_name
return run function obj:runtime/referenced_registered_class_descriptor/get_superclass_name/get with storage io:
