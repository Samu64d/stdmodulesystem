#
# obj:runtime/main/main
#

# Update objects
data modify storage io: tag set value "obj.is_class"
data modify storage io: callback set value "obj:runtime/object_native_updater"
function server:selector_entity_list/select_by_tag
