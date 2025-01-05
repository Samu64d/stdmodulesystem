#
# stdmodulesystem:datapack_manager/loader/boot/boot_datapack
#

# Update status
scoreboard players operation ::in status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status BOOT
function stdmodulesystem:datapack_manager/available_datapack/set_status

# Set the datapack
function stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
function stdmodulesystem:datapack_manager/available_datapack_listmap/update_by_id

# Boot datapack
function stdmodulesystem:api/boot_datapack
