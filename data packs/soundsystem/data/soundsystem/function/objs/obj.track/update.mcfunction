#
# soundsystem:objs/obj.track/update
#
# Update the state of a track
#> Context
#  @executor (in): the track
#> Return void

# Super
function obj:objs/obj.obj/update

# Check for playing state
execute if score @s soundsystem_objs_obj.track_is_playing = ::const TRUE run function soundsystem:objs/obj.track/update/update
