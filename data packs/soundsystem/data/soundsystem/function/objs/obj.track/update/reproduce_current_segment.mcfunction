#
# soundsystem:objs/obj.track/update/reproduce_current_segment
#

# Get current segment sound id
function soundsystem:objs/obj.track/get_current_segment_sound_id

# Set sound id
data modify entity @s data.sound_id set from storage io: segment_sound_id

# Reproduce sound
data modify storage io: method set value "reproduce"
function obj:invoke
