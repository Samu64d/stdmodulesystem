#
# minecraft_registries:provider/blockstates/get_leaves
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[leaves=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[leaves=small] run data modify storage io: property_value set value "small"
execute if block ~ ~ ~ #minecraft_registries:all[leaves=large] run data modify storage io: property_value set value "large"
