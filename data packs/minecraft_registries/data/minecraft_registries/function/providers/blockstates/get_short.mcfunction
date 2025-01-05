#
# minecraft_registries:provider/blockstates/get_short
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[short=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[short=false] run data modify storage io: property_value set value "false"
