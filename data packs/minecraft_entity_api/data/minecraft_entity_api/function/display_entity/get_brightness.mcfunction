#
# minecraft_entity_api:display_entity/get_brightness
#
# Get the brightness of a display entity
#> Storage
#  @brightness (out): the brightness
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: brightness set from entity @s brightness
