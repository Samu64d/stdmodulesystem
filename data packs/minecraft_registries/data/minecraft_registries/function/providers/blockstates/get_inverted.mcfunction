#
# minecraft_registries:provider/blockstates/get_inverted
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[inverted=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[inverted=false] run data modify storage io: property_value set value "false"
