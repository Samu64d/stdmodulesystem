#
# stdmodulesystem:obj/objs/obj/set_class_data/get_method_name
#

data modify storage io: string0 set from storage io: class_path
data modify storage io: string1 set value "/"
function stdmodulesystem:utils/string/concat
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set from storage io: method
function stdmodulesystem:utils/string/concat
data modify storage io: method_name set from storage io: string
