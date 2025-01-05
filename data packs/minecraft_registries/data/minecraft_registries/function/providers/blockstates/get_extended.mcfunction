#
# minecraft_registries:provider/blockstates/get_extended
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[extended=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[extended=false] run data modify storage io: property_value set value "false"
