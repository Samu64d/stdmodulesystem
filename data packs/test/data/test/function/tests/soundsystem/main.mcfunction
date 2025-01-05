#
# test:tests/soundsystem/main
#

# Create 3dsound 1
scoreboard players set ::in segment_count 123
scoreboard players operation ::in loop = ::const TRUE
data modify storage io: class_name set value "soundsystem:track"
data modify storage io: dimension set value "minecraft:overworld"
data modify storage io: position set value [0.0d, -59.0d, 0.0d]
data modify storage io: sound_id set value "test:track.track2"
data modify storage io: base_volume set value 1.0
data modify storage io: volume_attenuation set value 256.0
data modify storage io: speed set value 0.0
function obj:new
data modify storage io: pointer0 set from storage io: pointer

# Play 3dsound 1
data modify storage io: pointer set from storage io: pointer0
data modify storage io: method set value "play"
function obj:bind
