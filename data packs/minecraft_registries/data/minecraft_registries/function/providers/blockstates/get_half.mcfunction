#
# minecraft_registries:provider/blockstates/get_half
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[half=upper] run data modify storage io: property_value set value "upper"
execute if block ~ ~ ~ #minecraft_registries:all[half=lower] run data modify storage io: property_value set value "lower"
execute if block ~ ~ ~ #minecraft_registries:all[half=top] run data modify storage io: property_value set value "top"
execute if block ~ ~ ~ #minecraft_registries:all[half=bottom] run data modify storage io: property_value set value "bottom"
