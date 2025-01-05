#
# minecraft_registries:provider/blockstates/get_conditional
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[conditional=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[conditional=false] run data modify storage io: property_value set value "false"
