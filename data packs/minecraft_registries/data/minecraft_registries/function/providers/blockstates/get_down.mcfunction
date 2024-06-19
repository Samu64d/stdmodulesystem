#
# minecraft_registries:provider/blockstates/get_down
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[down=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[down=false] run data modify storage io: property_value set value "false"
