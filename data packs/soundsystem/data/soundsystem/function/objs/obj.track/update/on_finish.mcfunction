#
# soundsystem:objs/obj.track/update/on_finish
#

# Stop track if loop is false
execute if score @s soundsystem_objs_obj.track_loop = ::const FALSE run function soundsystem:objs/obj.track/stop

# Rewind track if loop is true
execute if score @s soundsystem_objs_obj.track_loop = ::const TRUE run function soundsystem:objs/obj.track/rewind
