#
# minecraft_registries:provider/blockstates/get_hanging
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[hanging=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[hanging=false] run data modify storage io: property_value set value "false"
