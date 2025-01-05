#
# stdmodulesystem:datapack_manager/register/registry_datapack
#

# Create available datapack
scoreboard players operation ::in status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status UNBOOTED
function stdmodulesystem:datapack_manager/available_datapack/new

# Add to the available datapack listmap
function stdmodulesystem:datapack_manager/available_datapack_listmap/add
