#
# minecraft_registries:provider/blockstates/get_berries
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[berries=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[berries=false] run data modify storage io: property_value set value "false"
