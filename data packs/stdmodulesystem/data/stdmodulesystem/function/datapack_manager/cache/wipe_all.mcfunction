#
# stdmodulesystem:datapack_manager/cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static datapack_manager
data modify storage stdmodulesystem:static datapack_manager set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile datapack_manager
data modify storage stdmodulesystem:volatile datapack_manager set value {}
