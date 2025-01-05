#
# minecraft_world_api:layout/dimension_settings_descriptor/get_dimension
#
# Get dimension of a dimension settings descriptor
#> Storage
#  @dimension_settings_descriptor (in): the dimension settings descriptor
#  @dimension (out): the dimension
#> Return void

data modify storage io: dimension set from storage io: dimension_settings_descriptor.dimension
