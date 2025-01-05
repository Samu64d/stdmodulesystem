#
# minecraft_registries:provider/blockstates/get_persistent
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[persistent=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[persistent=false] run data modify storage io: property_value set value "false"
