#
# stdmodulesystem:datapack/cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static datapack
data modify storage stdmodulesystem:static datapack set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile datapack
data modify storage stdmodulesystem:volatile datapack set value {}
