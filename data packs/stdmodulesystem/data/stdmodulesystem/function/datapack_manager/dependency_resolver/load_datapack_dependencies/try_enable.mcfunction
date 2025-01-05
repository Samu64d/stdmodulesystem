#
# stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/try_enable
#

# Enable datapack
execute if function stdmodulesystem:datapack/enable run function stdmodulesystem:datapack_manager/dependency_resolver/load_datapack_dependencies/on_enabled
