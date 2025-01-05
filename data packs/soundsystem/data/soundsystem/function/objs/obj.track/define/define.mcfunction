#
# soundsystem:objs/obj.track/define/define
#

# Declare module
#define score_holder ::soundsystem::objs::obj.track
#define score_holder ::soundsystem::objs::obj.track::const

# Define constants
scoreboard objectives add SEGMENT_DURATION dummy

scoreboard players set ::soundsystem::objs::obj.track::const SEGMENT_DURATION 20

# Define attributes
scoreboard objectives add soundsystem_objs_obj.track_segment_count dummy
scoreboard objectives add soundsystem_objs_obj.track_size dummy
scoreboard objectives add soundsystem_objs_obj.track_time dummy
scoreboard objectives add soundsystem_objs_obj.track_loop dummy
scoreboard objectives add soundsystem_objs_obj.track_is_playing dummy

# Define variables
scoreboard objectives add segment_count dummy
scoreboard objectives add loop dummy
