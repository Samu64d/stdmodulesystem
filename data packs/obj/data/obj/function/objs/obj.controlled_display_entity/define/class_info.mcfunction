#
# obj:objs/obj.controlled_display_entity/define/class_info
#

data modify storage io: class_info set value {\
	name: "obj:controlled_display_entity",\
	extends: "obj:controlled_entity",\
	abstract: true,\
	runtime_method_list: [\
		"delete",\
		"get_billboard",\
		"get_left_rotation",\
		"get_right_rotation",\
		"get_scale",\
		"get_teleport_duration",\
		"get_translation",\
		"get_view_range",\
		"new",\
		"set_billboard",\
		"set_left_rotation",\
		"set_right_rotation",\
		"set_scale",\
		"set_teleport_duration",\
		"set_translation",\
		"set_view_range",\
		"update"\
	]\
}

return 1
