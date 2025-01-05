#
# minecraft_registries:provider/blockstates/get_sculk_sensor_phase
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[sculk_sensor_phase=inactive] run data modify storage io: property_value set value "inactive"
execute if block ~ ~ ~ #minecraft_registries:all[sculk_sensor_phase=active] run data modify storage io: property_value set value "active"
execute if block ~ ~ ~ #minecraft_registries:all[sculk_sensor_phase=cooldown] run data modify storage io: property_value set value "cooldown"
