#
# minecraft_world_api:layout/dimension_settings_descriptor/get_max_build_height
#
# Get the maximum build height of a dimension settings descriptor
#> Storage
#  @dimension_settings_descriptor (in): the dimension settings descriptor
#> Return data
#  maximum build height

return run data get storage io: dimension_settings_descriptor.max_build_height 1.0
