#
# minecraft_registries:provider/blockstates/get_north
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[north=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[north=false] run data modify storage io: property_value set value "false"
execute if block ~ ~ ~ #minecraft_registries:all[north=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[north=low] run data modify storage io: property_value set value "low"
execute if block ~ ~ ~ #minecraft_registries:all[north=tall] run data modify storage io: property_value set value "tall"
execute if block ~ ~ ~ #minecraft_registries:all[north=up] run data modify storage io: property_value set value "up"
execute if block ~ ~ ~ #minecraft_registries:all[north=side] run data modify storage io: property_value set value "side"
