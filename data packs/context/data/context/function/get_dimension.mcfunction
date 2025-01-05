#
# context:get_dimension
#
# Get the context dimension
#> Storage
#  @dimension (out): the context dimension
#> Context
#  @dimension (in): the dimension
#> Return void

data modify storage io: type set value "minecraft:piglin_brute"
data modify storage io: callback set value "context:get_dimension/on_entity"
execute positioned ~ -20000000 ~ run function minecraft_entity_api:entity/new_transient
