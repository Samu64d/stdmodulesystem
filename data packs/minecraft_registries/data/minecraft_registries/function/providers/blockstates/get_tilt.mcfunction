#
# minecraft_registries:provider/blockstates/get_tilt
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[tilt=none] run data modify storage io: property_value set value "none"
execute if block ~ ~ ~ #minecraft_registries:all[tilt=unstable] run data modify storage io: property_value set value "unstable"
execute if block ~ ~ ~ #minecraft_registries:all[tilt=partial] run data modify storage io: property_value set value "partial"
execute if block ~ ~ ~ #minecraft_registries:all[tilt=full] run data modify storage io: property_value set value "full"
