#
# minecraft_registries:provider/blockstates/get_east
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[east=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[east=false] run data modify storage io: property_value set value "false"
execute if block ~ ~ ~ #minecraft_registries:all[east=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[east=low] run data modify storage io: property_value set value "low"
execute if block ~ ~ ~ #minecraft_registries:all[east=tall] run data modify storage io: property_value set value "tall"
execute if block ~ ~ ~ #minecraft_registries:all[east=up] run data modify storage io: property_value set value "up"
execute if block ~ ~ ~ #minecraft_registries:all[east=side] run data modify storage io: property_value set value "side"
