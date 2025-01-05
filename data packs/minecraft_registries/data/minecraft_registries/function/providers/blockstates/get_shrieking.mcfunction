#
# minecraft_registries:provider/blockstates/get_shrieking
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[shrieking=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[shrieking=false] run data modify storage io: property_value set value "false"
