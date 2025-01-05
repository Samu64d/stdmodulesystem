#
# minecraft_registries:provider/blockstates/get_lit
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[lit=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[lit=false] run data modify storage io: property_value set value "false"
