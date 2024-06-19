#
# test:tests/soundsystem/main
#

# Create sound 1
scoreboard players set ::in segments 452
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [10.0d, 73.0d, -10.0d]}
data modify storage io: class_path set value "soundsystem:obj/obj.3dsound"
data modify storage io: sound_id set value "test:music.test2"
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer0 set from storage io: pointer

# Play sound 1
data modify storage io: callback set value "soundsystem:obj/obj.3dsound/play"
data modify storage io: pointer set from storage io: pointer0
function stdmodulesystem:obj/obj_runtime/bind
