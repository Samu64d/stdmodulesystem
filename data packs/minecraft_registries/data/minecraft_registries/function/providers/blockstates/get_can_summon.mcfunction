#
# minecraft_registries:provider/blockstates/get_can_summon
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[can_summon=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[can_summon=false] run data modify storage io: property_value set value "false"
