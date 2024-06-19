#
# minecraft_registries:providers/block/get_emissivity
#

data modify storage io: registry_name set value "BLOCK"
data modify storage io: property set value "EMISSIVITY"
data modify storage io: id set from storage io: name
function minecraft_registries:data/get_prop
data modify storage io: emissivity set from storage io: prop
