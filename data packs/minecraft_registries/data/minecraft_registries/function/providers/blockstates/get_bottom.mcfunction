#
# minecraft_registries:provider/blockstates/get_bottom
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[bottom=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[bottom=false] run data modify storage io: property_value set value "false"
