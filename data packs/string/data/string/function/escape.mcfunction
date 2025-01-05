#
# string:escape
#
# Escape special characters inside a string
#> Storage
#  @string (inout): the string
#> Return void

# Create entity
data modify storage io: type set value "minecraft:text_display"
data modify storage io: callback set value "string:escape/on_entity"
function minecraft_entity_api:entity/new_transient
