#
# obj:runtime/referenced_registered_class_descriptor/get_runtime_method_path/get
#

$return run data modify storage io: runtime_method_path set from $(registered_class_descriptor_ref).runtime_method_table.$(runtime_method_name)
