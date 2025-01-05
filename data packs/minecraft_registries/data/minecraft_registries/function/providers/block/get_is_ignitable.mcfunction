#
# minecraft_registries:providers/block/get_is_ignitable
#

data modify storage io: registry_name set value "BLOCK"
data modify storage io: property set value "IS_IGNITABLE"
data modify storage io: id set from storage io: name
function minecraft_registries:data/get_prop
data modify storage io: is_ignitable set from storage io: prop
