#
# stdmodulesystem:api/boot_datapack/boot
#

# Define 
$function $(datapack_id):define/define

# Set static cache
$function $(datapack_id):cache/set_static

# Wipe volatile cache
$function $(datapack_id):cache/wipe_volatile

# Call on datapack load function
$function $(datapack_id):stdmodulesystem/on_datapack_load
