#
# minecraft_registries:provider/blockstates/get_has_bottle_1
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[has_bottle_1=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[has_bottle_1=false] run data modify storage io: property_value set value "false"
