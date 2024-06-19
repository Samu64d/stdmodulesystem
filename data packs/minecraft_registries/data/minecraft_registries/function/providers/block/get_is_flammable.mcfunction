#
# minecraft_registries:providers/block/get_is_flammable
#

data modify storage io: registry_name set value "BLOCK"
data modify storage io: property set value "IS_FLAMMABLE"
data modify storage io: id set from storage io: name
function minecraft_registries:data/get_prop
data modify storage io: is_flammable set from storage io: prop
