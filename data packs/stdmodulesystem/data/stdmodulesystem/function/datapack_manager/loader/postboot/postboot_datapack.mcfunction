#
# stdmodulesystem:datapack_manager/loader/bostboot_datapack
#

# Postboot datapack
function stdmodulesystem:api/postboot_datapack

# Update status
scoreboard players operation ::in status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status TICKED
function stdmodulesystem:datapack_manager/available_datapack/set_status

# Set the datapack
function stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
function stdmodulesystem:datapack_manager/available_datapack_listmap/update_by_id
