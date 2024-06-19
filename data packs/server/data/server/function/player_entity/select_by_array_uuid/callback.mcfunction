#
# server:player_entity/select_by_array_uuid/callback
#

$execute as @a[nbt={UUID:$(uuid)}] run function $(callback)
