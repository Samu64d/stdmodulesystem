#
# minecraft_registries:provider/blockstates/get_south
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[south=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[south=false] run data modify storage io: property_value set value "false"
execute if block ~ ~ ~ #minecraft_registries:all[south=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[south=low] run data modify storage io: property_value set value "low"
execute if block ~ ~ ~ #minecraft_registries:all[south=tall] run data modify storage io: property_value set value "tall"
execute if block ~ ~ ~ #minecraft_registries:all[south=up] run data modify storage io: property_value set value "up"
execute if block ~ ~ ~ #minecraft_registries:all[south=side] run data modify storage io: property_value set value "side"
