#
# minecraft_registries:provider/blockstates/get_locked
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[locked=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[locked=false] run data modify storage io: property_value set value "false"
