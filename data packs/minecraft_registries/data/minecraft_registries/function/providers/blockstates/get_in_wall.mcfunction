#
# minecraft_registries:provider/blockstates/get_in_wall
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[in_wall=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[in_wall=false] run data modify storage io: property_value set value "false"
