#
# obj:objs/obj.controlled_entity/define/class_info
#

data modify storage io: class_info set value {\
	name: "obj:controlled_entity",\
	extends: "obj:obj",\
	abstract: true,\
	runtime_method_list: [\
		"delete",\
		"get_rotation",\
		"new",\
		"set_dimension",\
		"set_position",\
		"set_rotation",\
		"teleport",\
		"update"\
	]\
}

return 1
