#
# minecraft_registries:providers/block/get_name
#

# Get id
execute store result storage io: id int 1.0 run function minecraft_registries:providers/block/get_id

# Get name
data modify storage io: registry_name set value "BLOCK"
data modify storage io: property set value "NAME"
function minecraft_registries:data/get_prop
data modify storage io: name set from storage io: prop
