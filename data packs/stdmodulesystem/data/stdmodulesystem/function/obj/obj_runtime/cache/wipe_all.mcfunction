#
# stdmodulesystem:obj/obj_runtime/cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static obj_runtime
data modify storage stdmodulesystem:static obj_runtime set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile obj_runtime
data modify storage stdmodulesystem:volatile obj_runtime set value {}
