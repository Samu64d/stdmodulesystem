#
# obj:objs/obj.controlled_item_display_entity/define/class_info
#

data modify storage io: class_info set value {\
	name: "obj:controlled_item_display_entity",\
	extends: "obj:controlled_display_entity",\
	abstract: false,\
	runtime_method_list: [\
		"delete",\
		"get_item_components",\
		"get_item_display",\
		"get_item_id",\
		"new",\
		"set_item_components",\
		"set_item_display",\
		"set_item_id",\
		"update"\
	]\
}

return 1
