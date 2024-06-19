#
# minecraft_registries:provider/blockstates/get_triggered
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[triggered=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[triggered=false] run data modify storage io: property_value set value "false"
