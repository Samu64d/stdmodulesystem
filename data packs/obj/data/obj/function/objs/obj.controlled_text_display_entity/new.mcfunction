#
# obj:objs/obj.controlled_text_display_entity/new
#
# Create a new controlled text display entity from an object
#> Storage
#  @text (in): the text
#> Context
#  @executor (in): the base object
#> Return void

# Super
function obj:objs/obj.controlled_display_entity/new

# Get object dimension
data modify storage io: method set value "get_dimension"
function obj:invoke

# Get object position
data modify storage io: method set value "get_position"
function obj:invoke

# Create entity
data modify storage io: type set value "minecraft:text_display"
data modify storage io: callback set value "obj:objs/obj.controlled_text_display_entity/new/set_data"
function minecraft_entity_api:entity/new

# Set uuid
data modify entity @s data.controlled_entity set from storage io: uuid
