#
# stdmodulesystem:utils/referenced_list/for_each
#
# Iterate through a list
#> Storage
#  @list_ref (in): the list reference
#  @callback (in): the callback function
#> Return void

# Check for not empty list
execute unless function stdmodulesystem:utils/referenced_list/is_empty run function stdmodulesystem:utils/referenced_list/for_each/loop_init
