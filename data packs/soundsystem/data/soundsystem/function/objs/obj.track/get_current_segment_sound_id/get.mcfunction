#
# soundsystem:objs/obj.track/get_current_segment_sound_id/get
#

$data modify storage io: segment_sound_id set value "$(base_sound_id).$(segment)"
