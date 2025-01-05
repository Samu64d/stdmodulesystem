#
# camera:objs/obj.camera/define/class_info
#

data modify storage io: class_info set value {\
	name: "camera:camera",\
	extends: "obj:controlled_entity",\
	abstract: false,\
	runtime_method_list: [\
	    "follow",\
		"get_moving_animation_duration",\
		"has_target",\
	    "look_at",\
	    "new",\
		"set_moving_animation_duration",\
		"spectate_for_player",\
		"update"\
	]\
}

return 1
