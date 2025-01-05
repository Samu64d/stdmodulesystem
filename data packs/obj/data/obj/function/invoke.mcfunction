#
# obj:invoke
#
# Invoke a runtime method of an object
#> Storage
#  @method (in): the method name
#> Context
#  @executor (in): the object
#> Return data
#  boolean flag

data modify storage io: runtime_method_name set from storage io: method
return run function obj:runtime/runtime_method_invoker
