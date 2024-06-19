#
# minecraft_registries:provider/blockstates/get_open
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[open=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[open=false] run data modify storage io: property_value set value "false"
