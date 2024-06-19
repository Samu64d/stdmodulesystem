#
# stdmodulesystem:utils/list/for_each
#
# Iterate through a list
#> Storage
#  @list (in): the list
#  @callbak (in): the callback function
#> Return void

# Check for not empty list
execute unless function stdmodulesystem:utils/list/is_empty run function stdmodulesystem:utils/list/for_each/loop_init with storage io:
