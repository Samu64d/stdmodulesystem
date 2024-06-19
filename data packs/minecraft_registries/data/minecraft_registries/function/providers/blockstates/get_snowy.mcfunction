#
# minecraft_registries:provider/blockstates/get_snowy
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[snowy=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[snowy=false] run data modify storage io: property_value set value "false"
