#
# random:randbool
#
# Generate a random boolean flag
#> Return data
#  boolean flag

execute store success score ::random value if predicate random:random/randbool

# Return data
return run scoreboard players get ::random value
