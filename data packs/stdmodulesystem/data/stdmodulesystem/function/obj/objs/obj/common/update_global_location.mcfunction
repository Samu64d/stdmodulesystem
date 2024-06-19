#
# stdmodulesystem:obj/objs/obj/common/update_global_location
#

# Check for parent
execute store result score ::stdmodulesystem::obj::obj has_parent run function stdmodulesystem:obj/objs/obj/has_parent
execute if score ::stdmodulesystem::obj::obj has_parent = ::const FALSE run function stdmodulesystem:obj/objs/obj/common/update_global_location_no_parent
execute if score ::stdmodulesystem::obj::obj has_parent = ::const TRUE run function stdmodulesystem:obj/objs/obj/common/update_global_location_parent
