#
# soundsystem:obj/obj.3dsound/update
#
# Update a 3d sound state
#> Context
#  @executor: the 3d sound
#> Return void

execute if score @s soundsystem_obj_obj.3dsound_is_playing = ::const TRUE run function soundsystem:obj/obj.3dsound/update/update
