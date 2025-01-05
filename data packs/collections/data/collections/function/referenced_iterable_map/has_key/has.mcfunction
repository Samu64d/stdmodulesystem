#
# collections:referenced_iterable_map/has_key/has
#

$return run execute if data $(iterable_map_ref).data.'$(key)'
