#
# soundsystem:obj/obj.3dsound/update/play_current_segment
#

data modify storage io: channel set value "music"

# Compose old segment sound id
data modify storage io: string0 set from entity @s data.sound_id
data modify storage io: string1 set value "."
function string:concat
data modify storage io: string0 set from storage io: string
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 = @s soundsystem_obj_obj.3dsound_time
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 /= ::soundsystem::obj::obj.3dsound::const SEGMENT_DURATION
scoreboard players remove ::soundsystem::obj::obj.3dsound temp0 1
execute store result storage io: string1 int 1.0 run scoreboard players get ::soundsystem::obj::obj.3dsound temp0
function string:concat
data modify storage io: sound_id set from storage io: string

# Stop old segment
execute as @p run function soundsystem:sound/stop

# Compose current segment sound id
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 = @s soundsystem_obj_obj.3dsound_time
scoreboard players operation ::soundsystem::obj::obj.3dsound temp0 /= ::soundsystem::obj::obj.3dsound::const SEGMENT_DURATION
execute store result storage io: string1 int 1.0 run scoreboard players get ::soundsystem::obj::obj.3dsound temp0
function string:concat
data modify storage io: sound_id set from storage io: string

# Play current segment
data modify storage io: location set from entity @s data.location
execute store result storage io: volume int 1.0 run scoreboard players get @s soundsystem_obj_obj.3dsound_volume
data modify storage io: pitch set from entity @s data.pitch
data modify storage io: minimum_volume set value 0.0
execute as @p run function soundsystem:sound/play
