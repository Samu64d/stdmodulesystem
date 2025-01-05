#
# minecraft_entity_api:display_entity/get_translation
#
# Get the translation of a display entity
#> Storage
#  @translation (out): the translation
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: translation set from entity @s transformation.translation
