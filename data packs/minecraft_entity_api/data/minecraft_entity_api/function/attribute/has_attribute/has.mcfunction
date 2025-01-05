#
# minecraft_entity_api:attribute/has_attribute/has
#

$return run execute if data entity @s attributes[{id:"$(attribute)"}]
