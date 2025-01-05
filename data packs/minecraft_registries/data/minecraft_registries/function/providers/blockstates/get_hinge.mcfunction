#
# minecraft_registries:provider/blockstates/get_hinge
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[hinge=left] run data modify storage io: property_value set value "left"
execute if block ~ ~ ~ #minecraft_registries:all[hinge=right] run data modify storage io: property_value set value "right"
