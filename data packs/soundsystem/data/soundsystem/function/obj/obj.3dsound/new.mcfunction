#
# soundsystem:obj/obj.3dsound/new
#
# Create a new 3d sound object
#> Scores
#  @segments (in): the sound segments number
#> Storage
#  @sound_id (in): the sound id
#  @pointer (out): object pointer
#> Return void

# Sound id
data modify entity @s data.sound_id set from storage io: sound_id

# Sound segments

# Volume
scoreboard players set ::in volume 100
function soundsystem:obj/obj.3dsound/set_volume

# Pitch
data modify storage io: pitch set value 1.0
function soundsystem:obj/obj.3dsound/set_pitch

# Time
function soundsystem:obj/obj.3dsound/rewind

# Size
scoreboard players operation @s soundsystem_obj_obj.3dsound_size = ::in segments
scoreboard players operation @s soundsystem_obj_obj.3dsound_size *= ::soundsystem::obj::obj.3dsound::const SEGMENT_DURATION

# Stop
function soundsystem:obj/obj.3dsound/stop

# Loop
scoreboard players operation ::in loop = ::const TRUE
function soundsystem:obj/obj.3dsound/set_loop
