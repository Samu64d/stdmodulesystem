#
# mineweather:server/player_entity/armor/get_equipped_all
#

# Head armor slot
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet"}]}] run scoreboard players set @s helmet_id 0
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:chainmail_helmet"}]}] run scoreboard players set @s helmet_id 1
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:iron_helmet"}]}] run scoreboard players set @s helmet_id 2
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:golden_helmet"}]}] run scoreboard players set @s helmet_id 3
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:diamond_helmet"}]}] run scoreboard players set @s helmet_id 4
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:carved_pumpkin"}]}] run scoreboard players set @s helmet_id 5
execute if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:turtle_helmet"}]}] run scoreboard players set @s helmet_id 6


# Chest armor slot
execute if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate"}]}] run scoreboard players set @s chestplate_id 0
execute if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:chainmail_chestplate"}]}] run scoreboard players set @s chestplate_id 1
execute if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:iron_chestplate"}]}] run scoreboard players set @s chestplate_id 2
execute if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:golden_chestplate"}]}] run scoreboard players set @s chestplate_id 3
execute if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:diamond_chestplate"}]}] run scoreboard players set @s chestplate_id 4

# Legs armor slot
execute if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:leather_leggings"}]}] run scoreboard players set @s leggings_id 0
execute if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:chainmail_leggings"}]}] run scoreboard players set @s leggings_id 1
execute if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:iron_leggings"}]}] run scoreboard players set @s leggings_id 2
execute if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}] run scoreboard players set @s leggings_id 3
execute if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:diamond_leggings"}]}] run scoreboard players set @s leggings_id 4

# Feet armor slot
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:leather_boots"}]}] run scoreboard players set @s boots_id 0
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:chainmail_boots"}]}] run scoreboard players set @s boots_id 1
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:iron_boots"}]}] run scoreboard players set @s boots_id 2
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:golden_boots"}]}] run scoreboard players set @s boots_id 3
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:diamond_boots"}]}] run scoreboard players set @s boots_id 4
