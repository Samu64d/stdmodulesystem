#
# server:selector_player_list/select_by_array_uuid/select
#

$execute as @a[nbt={UUID:$(uuid)}] run function server:selector_player_list/common/on_found with storage io:
