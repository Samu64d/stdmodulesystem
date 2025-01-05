#
# soundsystem:objs/obj.track/update/update
#

# Update current segment
scoreboard players add @s soundsystem_objs_obj.track_time 1

# Reproduce current segment
scoreboard players operation ::soundsystem::objs::obj.track temp0 = @s soundsystem_objs_obj.track_time
scoreboard players operation ::soundsystem::objs::obj.track temp0 %= ::soundsystem::objs::obj.track::const SEGMENT_DURATION
execute if score ::soundsystem::objs::obj.track temp0 matches 0 run function soundsystem:objs/obj.track/update/reproduce_current_segment

# Check for track finish
execute if score @s soundsystem_objs_obj.track_time = @s soundsystem_objs_obj.track_size run function soundsystem:objs/obj.track/update/on_finish
