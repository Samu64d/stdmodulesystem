#
# minecraft_registries:provider/blockstates/get_signal_fire
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[signal_fire=true] run data modify storage io: property_value set value "true"
execute if block ~ ~ ~ #minecraft_registries:all[signal_fire=false] run data modify storage io: property_value set value "false"
