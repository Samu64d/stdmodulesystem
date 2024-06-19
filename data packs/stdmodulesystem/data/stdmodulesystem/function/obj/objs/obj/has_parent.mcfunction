#
# stdmodulesystem:obj/objs/obj/has_parent
#
# Check if an object has a parent
#> Context
#  @executor: the object
#> Return data
#  boolean flag

# Get parent pointer
function stdmodulesystem:obj/objs/obj/get_parent

# Check for null pointer
data modify storage io: string0 set from storage io: parent
data modify storage io: string1 set value "NULL"
execute store result score ::stdmodulesystem::obj_runtime temp0 run function stdmodulesystem:utils/string/are_equal
return run execute if score ::stdmodulesystem::obj_runtime temp0 = ::const FALSE
