#
# data_observer:observed_data_descriptor/set_changed
#
# Set if an observed data descriptor data has changed
#> Score
#  @changed (in): boolean flag
#> Storage
#  @observed_data_descriptor (inout): the observed data descriptor
#> Return void

execute store result storage io: observed_data_descriptor.state.changed byte 1.0 run scoreboard players get ::in changed
