#
# stdmodulesystem:cache/wipe_all
#

# Clear static data
data remove storage stdmodulesystem:static {}
data modify storage stdmodulesystem:static {} set value {}

# Clear volatile data
data remove storage stdmodulesystem:volatile {}
data modify storage stdmodulesystem:volatile {} set value {}

function stdmodulesystem:datapack/cache/wipe_all
function stdmodulesystem:datapack_manager/cache/wipe_all
function stdmodulesystem:stack/cache/wipe_all
