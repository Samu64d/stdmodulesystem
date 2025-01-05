#
# obj:runtime/class_register/build_runtime_method_table/get_runtime_method_path
#

$data modify storage io: runtime_method_path set value "$(class_path)/$(runtime_method_name)"
