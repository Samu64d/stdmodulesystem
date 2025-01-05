#
# obj:objs/obj.controlled_block_display_entity/define/class_info
#

data modify storage io: class_info set value {\
	name: "obj:controlled_block_display_entity",\
	extends: "obj:controlled_display_entity",\
	abstract: false,\
	runtime_method_list: [\
		"delete",\
		"get_block_name",\
		"get_block_properties",\
		"new",\
		"set_block_name",\
		"set_block_properties",\
		"update"\
	]\
}

return 1
