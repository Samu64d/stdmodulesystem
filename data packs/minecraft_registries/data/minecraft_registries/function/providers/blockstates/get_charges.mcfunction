#
# minecraft_registries:provider/blockstates/get_charges
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[charges=0] run data modify storage io: property_value set value "0"
execute if block ~ ~ ~ #minecraft_registries:all[charges=1] run data modify storage io: property_value set value "1"
execute if block ~ ~ ~ #minecraft_registries:all[charges=2] run data modify storage io: property_value set value "2"
execute if block ~ ~ ~ #minecraft_registries:all[charges=3] run data modify storage io: property_value set value "3"
execute if block ~ ~ ~ #minecraft_registries:all[charges=4] run data modify storage io: property_value set value "4"
