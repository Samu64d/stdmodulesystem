#
# stdmodulesystem:obj/objs/obj/cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static obj.obj
data modify storage stdmodulesystem:static obj.obj set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile obj.obj
data modify storage stdmodulesystem:volatile obj.obj set value {}
