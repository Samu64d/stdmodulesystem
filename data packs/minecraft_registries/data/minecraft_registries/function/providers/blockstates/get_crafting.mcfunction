#
# minecraft_registries:provider/blockstates/get_crafting
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[crafting=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[crafting=false] run data modify storage io: property_value set value "false"
