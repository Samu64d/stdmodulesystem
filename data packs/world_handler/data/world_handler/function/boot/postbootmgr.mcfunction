#
# world_handler:boot/postbootmgr
#

# Subscribe to events
function world_handler:events/subscribers/on_chunk_enter_ticking_areas
function world_handler:events/subscribers/on_chunk_exited_ticking_areas
function world_handler:events/subscribers/on_ticking_area_created
function world_handler:events/subscribers/on_ticking_area_location_changed
function world_handler:events/subscribers/on_ticking_area_changed
function world_handler:events/subscribers/on_ticking_area_removed

# Ticking areas manager
function world_handler:ticking_areas_manager/boot/postbootmgr

# World spawn manager
function world_handler:world_spawn_manager/boot/postbootmgr
