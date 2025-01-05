#
# stdmodulesystem:datapack_manager/ticker
#

# Begin tick
data modify storage io: callback set value "stdmodulesystem:datapack_manager/ticker/begin_tick/process_datapack"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each

# Tick
data modify storage io: callback set value "stdmodulesystem:datapack_manager/ticker/tick/process_datapack"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each

# End tick
data modify storage io: callback set value "stdmodulesystem:datapack_manager/ticker/end_tick/process_datapack"
function stdmodulesystem:datapack_manager/available_datapack_listmap/for_each
