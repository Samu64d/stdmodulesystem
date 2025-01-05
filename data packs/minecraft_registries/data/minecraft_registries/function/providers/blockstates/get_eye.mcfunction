#
# minecraft_registries:provider/blockstates/get_eye
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[eye=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[eye=false] run data modify storage io: property_value set value "false"
