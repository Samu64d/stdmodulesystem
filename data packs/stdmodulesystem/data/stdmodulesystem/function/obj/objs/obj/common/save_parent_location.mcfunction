#
# stdmodulesystem:obj/objs/obj/common/save_parent_location
#

function stdmodulesystem:obj/objs/obj/get_global_location
execute store result score ::stdmodulesystem::obj::obj x0 run data get storage io: location.position[0] 100.0
execute store result score ::stdmodulesystem::obj::obj y0 run data get storage io: location.position[1] 100.0
execute store result score ::stdmodulesystem::obj::obj z0 run data get storage io: location.position[2] 100.0
