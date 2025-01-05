#
# minecraft_world_api:layout/dimension_settings_descriptor/get_min_build_height
#
# Get the minimum build height of a dimension settings descriptor
#> Storage
#  @dimension_settings_descriptor (in): the dimension settings descriptor
#> Return data
#  minimum build height

return run data get storage io: dimension_settings_descriptor.min_build_height 1.0
