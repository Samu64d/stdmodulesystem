#
# test:tests/all
#

# Clear objects
execute as @e[nbt={data:{is_class:true}}] run function stdmodulesystem:obj/objs/obj/delete

# Run tests
function test:tests/collections/main
function test:tests/io/main
function test:tests/math/main
function test:tests/nmath/main
function test:tests/random/main
function test:tests/soundsystem/main
function test:tests/stdmodulesystem/main
function test:tests/string/main

#> Openworlds.main library test

# Create bell 1
scoreboard players set ::in size 10
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [393.0d, 75.0d, -202.0d]}
data modify storage io: class_path set value "openworlds:data/data/objs/obj.bell"
data modify storage io: sound_id set value "openworlds:fx.002"
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer9 set from storage io: pointer

# Create time alarm 1
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [0.0d, 0.0d, 0.0d]}
data modify storage io: class_path set value "openworlds:data/data/objs/obj.time_alarm"
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer10 set from storage io: pointer

# Set bell time alarm
data modify storage io: callback set value "openworlds:data/data/objs/obj.bell/set_time_alarm"
data modify storage io: pointer set from storage io: pointer9
data modify storage io: time_alarm set from storage io: pointer10
function stdmodulesystem:obj/obj_runtime/bind

# Create bomb 1
scoreboard players set ::in explosion_power 1
scoreboard players operation ::in is_flammable = ::const FALSE
data modify storage io: location set value {"dimension": "minecraft:overworld", position: [393.0d, 155.0d, -202.0d]}
data modify storage io: class_path set value "openworlds:data/data/objs/obj.motion_enabled.bomb"
data modify storage io: direction set value [0.0f, 0.0f]
function stdmodulesystem:obj/objs/obj/new
data modify storage io: pointer11 set from storage io: pointer
