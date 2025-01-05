#
# collections:iterable_map/clear
#
# Clear an iterable map
#> Storage
#  @iterable_map (inout): the iterable map
#> Return void

data modify storage io: iterable_map set value {data: {}}
