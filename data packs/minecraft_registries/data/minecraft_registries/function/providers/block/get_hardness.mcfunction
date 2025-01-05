#
# minecraft_registries:providers/block/get_hardness
#

data modify storage io: registry_name set value "BLOCK"
data modify storage io: property set value "HARDNESS"
data modify storage io: id set from storage io: name
function minecraft_registries:data/get_prop
data modify storage io: hardness set from storage io: prop
