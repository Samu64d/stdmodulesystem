#
# minecraft_registries:provider/blockstates/get_slot_4_occupied
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[slot_4_occupied=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[slot_4_occupied=false] run data modify storage io: property_value set value "false"
