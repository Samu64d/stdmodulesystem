#
# minecraft_world_api:chunk/forceloading/is_loaded
#

$return run execute in $(dimension) run forceload query $(x) $(z)
