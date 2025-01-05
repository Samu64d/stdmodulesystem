#
# minecraft_registries:provider/blockstates/get_hatch
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[hatch=0] run data modify storage io: property_value set value "0"
execute if block ~ ~ ~ #minecraft_registries:all[hatch=1] run data modify storage io: property_value set value "1"
execute if block ~ ~ ~ #minecraft_registries:all[hatch=2] run data modify storage io: property_value set value "2"
