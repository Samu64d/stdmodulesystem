#
# minecraft_registries:provider/blockstates/get_thickness
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[thickness=tip_merge] run data modify storage io: property_value set value "tip_merge"
execute if block ~ ~ ~ #minecraft_registries:all[thickness=tip] run data modify storage io: property_value set value "tip"
execute if block ~ ~ ~ #minecraft_registries:all[thickness=frustum] run data modify storage io: property_value set value "frustum"
execute if block ~ ~ ~ #minecraft_registries:all[thickness=middle] run data modify storage io: property_value set value "middle"
execute if block ~ ~ ~ #minecraft_registries:all[thickness=base] run data modify storage io: property_value set value "base"
