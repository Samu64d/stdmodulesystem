#
# minecraft_registries:provider/blockstates/get_bloom
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[bloom=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[bloom=false] run data modify storage io: property_value set value "false"
