#
# world_loader:players_manager/cache/wipe_all
#

# Clear static data
data remove storage world_loader:static players_manager
data modify storage world_loader:static players_manager set value {}

# Clear volatile data
data remove storage world_loader:volatile players_manager
data modify storage world_loader:volatile players_manager set value {}
