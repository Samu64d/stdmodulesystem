#
# soundsystem:objs/obj.track/new
#
# Create a new track from an object
#> Scores
#  @segment_count (in): the segment count
#  @loop (in): the loop flag
#> Storage
#  @sound_id (in): the sound id
#  @base_volume (in): the base volume
#  @volume_attenuation (in): the volume attenuation
#  @speed (in): the sound speed
#> Context
#  @executor (in): the base object
#> Return void

# Super
data modify storage io: channel set value "music"
data modify storage io: auto_deletable set value false
function soundsystem:objs/obj.3dsound/new

# Base sound id
data modify entity @s data.base_sound_id set from storage io: sound_id

# Sound segment count
scoreboard players operation @s soundsystem_objs_obj.track_segment_count = ::in segment_count

# Size
scoreboard players operation @s soundsystem_objs_obj.track_size = @s soundsystem_objs_obj.track_segment_count
scoreboard players operation @s soundsystem_objs_obj.track_size *= ::soundsystem::objs::obj.track::const SEGMENT_DURATION

# Time
function soundsystem:objs/obj.track/rewind

# Loop
scoreboard players operation @s soundsystem_objs_obj.track_loop = ::in loop

# Stop
function soundsystem:objs/obj.track/stop
