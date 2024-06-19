#
# minecraft_registries:provider/blockstates/get_powered
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[powered=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[powered=false] run data modify storage io: property_value set value "false"
