#
# soundsystem:objs/obj.track/define/class_info
#

data modify storage io: class_info set value {\
	name: "soundsystem:track",\
	extends: "soundsystem:3dsound",\
	abstract: false,\
	runtime_method_list: [\
		"delete",\
		"get_loop",\
		"get_time",\
		"new",\
		"play",\
		"rewind",\
		"set_loop",\
		"set_time",\
		"stop",\
		"update"\
	]\
}

return 1
