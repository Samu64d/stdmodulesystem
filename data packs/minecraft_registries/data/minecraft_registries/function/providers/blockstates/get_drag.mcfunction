#
# minecraft_registries:provider/blockstates/get_drag
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[drag=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[drag=false] run data modify storage io: property_value set value "false"
