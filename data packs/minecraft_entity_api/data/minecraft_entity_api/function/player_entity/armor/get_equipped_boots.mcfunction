#
# mineweather:server/player_entity/armor/get_equipped_boots
#
# Get equipped boots type
# context:       <position: none, executor: none>
# arguments:     <> {}
# return values: <value: boots type> {}

# Get the item in the feet armor slot
data modify storage mineweather:server temp0 set from entity @s Inventory[{Slot:101b}]

execute if data storage mineweather:server temp0.id 
