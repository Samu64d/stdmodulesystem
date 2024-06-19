#
# minecraft_registries:provider/blockstates/get_attachment
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[attachment=floor] run data modify storage io: property_value set value "floor"
execute if block ~ ~ ~ #minecraft_registries:all[attachment=ceiling] run data modify storage io: property_value set value "ceiling"
execute if block ~ ~ ~ #minecraft_registries:all[attachment=single_wall] run data modify storage io: property_value set value "single_wall"
execute if block ~ ~ ~ #minecraft_registries:all[attachment=double_wall] run data modify storage io: property_value set value "double_wall"
