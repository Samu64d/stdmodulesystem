#
# soundsystem:obj/obj.3dsound/define/define
#

# Declare module
#define score_holder ::soundsystem::obj::obj.3dsound
#define score_holder ::soundsystem::obj::obj.3dsound::const

# Constants
scoreboard objectives add SEGMENT_DURATION dummy

scoreboard players set ::soundsystem::obj::obj.3dsound::const SEGMENT_DURATION 20

# Attributes
scoreboard objectives add soundsystem_obj_obj.3dsound_volume dummy
scoreboard objectives add soundsystem_obj_obj.3dsound_time dummy
scoreboard objectives add soundsystem_obj_obj.3dsound_size dummy
scoreboard objectives add soundsystem_obj_obj.3dsound_loop dummy
scoreboard objectives add soundsystem_obj_obj.3dsound_is_playing dummy

# Define variables
scoreboard objectives add segments dummy
scoreboard objectives add volume dummy
scoreboard objectives add time dummy
scoreboard objectives add loop dummy
