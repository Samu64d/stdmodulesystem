#
# minecraft_registries:provider/blockstates/get_attached
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[attached=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[attached=false] run data modify storage io: property_value set value "false"
