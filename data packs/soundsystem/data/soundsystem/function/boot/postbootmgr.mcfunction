#
# soundsystem:boot/postbootmgr
#

# Registry classes
data modify storage io: class_path set value "soundsystem:objs/obj.3dsound"
function obj:registry
data modify storage io: class_path set value "soundsystem:objs/obj.track"
function obj:registry
