#
# minecraft_registries:provider/blockstates/get_enabled
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[enabled=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[enabled=false] run data modify storage io: property_value set value "false"
