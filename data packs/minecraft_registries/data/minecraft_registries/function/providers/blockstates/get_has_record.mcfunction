#
# minecraft_registries:provider/blockstates/get_has_record
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[has_record=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[has_record=false] run data modify storage io: property_value set value "false"
