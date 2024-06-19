#
# minecraft_registries:provider/blockstates/get_face
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[face=floor] run data modify storage io: property_value set value "floor"
execute if block ~ ~ ~ #minecraft_registries:all[face=wall] run data modify storage io: property_value set value "wall"
execute if block ~ ~ ~ #minecraft_registries:all[face=ceiling] run data modify storage io: property_value set value "ceiling"
