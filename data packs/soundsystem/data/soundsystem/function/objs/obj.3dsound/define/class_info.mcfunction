#
# soundsystem:objs/obj.3dsound/define/class_info
#

data modify storage io: class_info set value {\
	name: "soundsystem:3dsound",\
	extends: "obj:obj",\
	abstract: false,\
	runtime_method_list: [\
		"delete",\
		"get_base_volume",\
		"get_channel",\
		"get_pitch",\
		"get_sound_id",\
		"get_speed",\
		"get_volume_attenuation",\
		"has_speed",\
		"new",\
		"reproduce",\
		"schedule_sound",\
		"set_base_volume",\
		"set_pitch",\
		"update"\
	]\
}

return 1
