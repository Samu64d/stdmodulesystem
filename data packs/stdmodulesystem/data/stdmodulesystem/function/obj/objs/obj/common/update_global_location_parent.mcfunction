#
# stdmodulesystem:obj/objs/obj/common/update_global_location_parent
#

# Global location = Parent global location + Object location

# Get parent location
function stdmodulesystem:obj/objs/obj/get_parent
data modify storage io: callback set value "stdmodulesystem:obj/objs/obj/common/save_parent_location"

data modify storage io: pointer set from storage io: parent
function stdmodulesystem:obj/obj_runtime/bind

# Get location
function stdmodulesystem:obj/objs/obj/get_location
execute store result score ::stdmodulesystem::obj::obj x1 run data get storage io: location.position[0] 100.0
execute store result score ::stdmodulesystem::obj::obj y1 run data get storage io: location.position[1] 100.0
execute store result score ::stdmodulesystem::obj::obj z1 run data get storage io: location.position[2] 100.0

# Compute new global location
scoreboard players operation ::stdmodulesystem::obj::obj x0 += ::stdmodulesystem::obj::obj x1
scoreboard players operation ::stdmodulesystem::obj::obj y0 += ::stdmodulesystem::obj::obj y1
scoreboard players operation ::stdmodulesystem::obj::obj z0 += ::stdmodulesystem::obj::obj z1

# Set global location
function stdmodulesystem:obj/objs/obj/get_location
execute store result storage io: location.position[0] double 0.01 run scoreboard players get ::stdmodulesystem::obj::obj x0
execute store result storage io: location.position[1] double 0.01 run scoreboard players get ::stdmodulesystem::obj::obj y0
execute store result storage io: location.position[2] double 0.01 run scoreboard players get ::stdmodulesystem::obj::obj z0
function stdmodulesystem:obj/objs/obj/set_global_location
