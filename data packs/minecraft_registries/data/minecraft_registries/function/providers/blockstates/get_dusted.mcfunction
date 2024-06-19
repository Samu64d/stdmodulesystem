#
# minecraft_registries:provider/blockstates/get_dusted
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[dusted=0] run data modify storage io: property_value set value "0"
execute if block ~ ~ ~ #minecraft_registries:all[dusted=1] run data modify storage io: property_value set value "1"
execute if block ~ ~ ~ #minecraft_registries:all[dusted=2] run data modify storage io: property_value set value "2"
execute if block ~ ~ ~ #minecraft_registries:all[dusted=3] run data modify storage io: property_value set value "3"
