#
# minecraft_registries:provider/blockstates/get_waterlogged
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[waterlogged=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[waterlogged=false] run data modify storage io: property_value set value "false"
