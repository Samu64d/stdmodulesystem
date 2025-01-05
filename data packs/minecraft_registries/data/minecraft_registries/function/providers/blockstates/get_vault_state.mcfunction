#
# minecraft_registries:provider/blockstates/get_vault_state
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[vault_state=inactive] run data modify storage io: property_value set value "inactive"
execute if block ~ ~ ~ #minecraft_registries:all[vault_state=active] run data modify storage io: property_value set value "active"
execute if block ~ ~ ~ #minecraft_registries:all[vault_state=unlocking] run data modify storage io: property_value set value "unlocking"
execute if block ~ ~ ~ #minecraft_registries:all[vault_state=ejecting] run data modify storage io: property_value set value "ejecting"
