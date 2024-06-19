#
# stdmodulesystem:datapack_manager/loader
#

# Load boot
data modify storage io: callback set value "stdmodulesystem:datapack_manager/loader/boot/process_datapack"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each

# Load post boot
data modify storage io: callback set value "stdmodulesystem:datapack_manager/loader/postboot/process_datapack"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each
