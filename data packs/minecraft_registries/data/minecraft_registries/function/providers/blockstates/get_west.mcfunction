#
# minecraft_registries:provider/blockstates/get_west
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[west=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[west=false] run data modify storage io: property_value set value "false"
execute if block ~ ~ ~ #minecraft_registries:all[west=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[west=low] run data modify storage io: property_value set value "low"
execute if block ~ ~ ~ #minecraft_registries:all[west=tall] run data modify storage io: property_value set value "tall"
execute if block ~ ~ ~ #minecraft_registries:all[west=up] run data modify storage io: property_value set value "up"
execute if block ~ ~ ~ #minecraft_registries:all[west=side] run data modify storage io: property_value set value "side"
