#
# minecraft_registries:provider/blockstates/get_mode
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[mode=compare] run data modify storage io: property_value set value "compare"
execute if block ~ ~ ~ #minecraft_registries:all[mode=subtract] run data modify storage io: property_value set value "subtract"
execute if block ~ ~ ~ #minecraft_registries:all[mode=save] run data modify storage io: property_value set value "save"
execute if block ~ ~ ~ #minecraft_registries:all[mode=load] run data modify storage io: property_value set value "load"
execute if block ~ ~ ~ #minecraft_registries:all[mode=corner] run data modify storage io: property_value set value "corner"
execute if block ~ ~ ~ #minecraft_registries:all[mode=data] run data modify storage io: property_value set value "data"
