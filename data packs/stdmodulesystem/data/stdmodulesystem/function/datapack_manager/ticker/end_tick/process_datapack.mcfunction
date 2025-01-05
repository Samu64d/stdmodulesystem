#
# stdmodulesystem:datapack_manager/ticker/end_tick/process_datapack
#

# Get avilable datapack
function stdmodulesystem:datapack_manager/available_datapack_listmap/get_by_id

# Check for status
execute store result score ::stdmodulesystem::datapack_manager status run function stdmodulesystem:datapack_manager/available_datapack/get_status

# End tick the datapack
execute if score ::stdmodulesystem::datapack_manager status = ::stdmodulesystem::datapack_manager::enum_available_datapack_status TICKED run function stdmodulesystem:datapack_manager/ticker/end_tick/on_end_ticked
