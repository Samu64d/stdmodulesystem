#
# minecraft_entity_api:text_display_entity/set_alignment
#
# Set the alignment of a text display entity
#> Storage
#  @alignment (in): the alignment
#> Context
#  @executor (in): the text display entity
#> Return data
#  boolean flag

return run data modify entity @s alignment set from storage io: alignment
