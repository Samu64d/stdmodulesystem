#
# minecraft_registries:providers/biome/get_temperature
#

data modify storage io: registry_name set value "BIOME"
data modify storage io: property set value "TEMPERATURE"
data modify storage io: id set from storage io: name
function minecraft_registries:data/get_prop
data modify storage io: temperature set from storage io: prop
