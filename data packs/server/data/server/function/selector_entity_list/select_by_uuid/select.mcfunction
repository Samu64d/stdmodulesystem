#
# server:selector_entity_list/select_by_uuid/callback
#

$execute as @e[nbt={UUID:$(uuid)}] run function server:selector_entity_list/common/on_found with storage io:
