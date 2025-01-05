#
# soundsystem:objs/obj.track/get_current_segment_sound_id
#

# Get base sound id
data modify storage io: base_sound_id set from entity @s data.base_sound_id

# Get segment
scoreboard players operation ::soundsystem::objs::obj.track temp0 = @s soundsystem_objs_obj.track_time
scoreboard players operation ::soundsystem::objs::obj.track temp0 /= ::soundsystem::objs::obj.track::const SEGMENT_DURATION
execute store result storage io: segment int 1.0 run scoreboard players get ::soundsystem::objs::obj.track temp0

# Get 
function soundsystem:objs/obj.track/get_current_segment_sound_id/get with storage io:
