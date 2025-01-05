#
# stdmodulesystem:datapack_manager/loader/boot/process_datapack
#

# Get avilable datapack
function stdmodulesystem:datapack_manager/available_datapack_listmap/get_by_id

# Check for status
execute store result score ::stdmodulesystem::datapack_manager status run function stdmodulesystem:datapack_manager/available_datapack/get_status

# If datapack is not booted
execute if score ::stdmodulesystem::datapack_manager status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status UNBOOTED run function stdmodulesystem:datapack_manager/loader/boot/boot_datapack
