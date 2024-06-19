#
# stdmodulesystem:obj/obj_runtime/bind/bind
#

$execute as @e[type=minecraft:marker, nbt={UUID:$(pointer)}] run function $(callback)
