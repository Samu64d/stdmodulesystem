#
# soundsystem:obj/obj.3dsound/update/update
#

# Update current segment
scoreboard players add @s soundsystem_obj_obj.3dsound_time 1

# Play current segment
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 = @s soundsystem_obj_obj.3dsound_time
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 %= ::soundsystem::obj::obj.3dsound::const SEGMENT_DURATION
execute if score ::soundsystem::obj::obj.3dsound temp0 matches 0 run function soundsystem:obj/obj.3dsound/update/play_current_segment

# Check for track finish
execute if score @s soundsystem_obj_obj.3dsound_time = @s soundsystem_obj_obj.3dsound_size run function soundsystem:obj/obj.3dsound/update/on_finish
