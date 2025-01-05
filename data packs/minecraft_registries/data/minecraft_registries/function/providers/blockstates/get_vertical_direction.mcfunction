#
# minecraft_registries:provider/blockstates/get_vertical_direction
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[vertical_direction=up] run data modify storage io: property_value set value "up"
execute if block ~ ~ ~ #minecraft_registries:all[vertical_direction=down] run data modify storage io: property_value set value "down"
