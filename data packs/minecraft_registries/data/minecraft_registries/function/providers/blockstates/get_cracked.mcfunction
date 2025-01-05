#
# minecraft_registries:provider/blockstates/get_cracked
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[cracked=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[cracked=false] run data modify storage io: property_value set value "false"
