#
# minecraft_registries:provider/blockstates/get_disarmed
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[disarmed=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[disarmed=false] run data modify storage io: property_value set value "false"
