#
# obj:objs/obj.controlled_text_display_entity/define/class_info
#

data modify storage io: class_info set value {\
	name: "obj:controlled_text_display_entity",\
	extends: "obj:controlled_display_entity",\
	abstract: false,\
	runtime_method_list: [\
		"delete",\
		"get_alignment",\
		"get_background",\
		"get_default_background",\
		"get_line_width",\
		"get_see_through",\
		"get_shadow",\
		"get_text_opacity",\
		"get_text",\
		"new",\
		"set_alignment",\
		"set_background",\
		"set_default_background",\
		"set_line_width",\
		"set_see_through",\
		"set_shadow",\
		"set_text_opacity",\
		"set_text",\
		"update"\
	]\
}

return 1
