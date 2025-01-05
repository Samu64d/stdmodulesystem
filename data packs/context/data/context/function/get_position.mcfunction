#
# context:get_position
#
# Get the context position
#> Storage
#  @position (out): the context position
#> Context
#  @position (in): the position
#> Return void

data modify storage io: type set value "minecraft:marker"
data modify storage io: callback set value "context:get_position/on_marker"
function minecraft_entity_api:entity/new_transient
