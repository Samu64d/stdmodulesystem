#
# world_handler:chunk_scheduling/cache/wipe_all
#

# Clear static data
data remove storage world_handler:static chunk_scheduling
data modify storage world_handler:static chunk_scheduling set value {}

# Clear volatile data
data remove storage world_handler:volatile chunk_scheduling
data modify storage world_handler:volatile chunk_scheduling set value {}
