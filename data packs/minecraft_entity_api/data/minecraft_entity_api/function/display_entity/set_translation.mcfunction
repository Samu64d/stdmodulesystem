#
# minecraft_entity_api:display_entity/set_translation
#
# Set the translation of a display entity
#> Storage
#  @translation (in): the translation
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s transformation.translation set from storage io: translation
