#
# math:to_storage_double/calculate
#

execute if score ::in p matches 1 store result storage io: result double 0.1 run scoreboard players get ::in value
execute if score ::in p matches 2 store result storage io: result double 0.01 run scoreboard players get ::in value
execute if score ::in p matches 3 store result storage io: result double 0.001 run scoreboard players get ::in value
execute if score ::in p matches 4 store result storage io: result double 0.0001 run scoreboard players get ::in value
execute if score ::in p matches 5 store result storage io: result double 0.00001 run scoreboard players get ::in value
execute if score ::in p matches 6 store result storage io: result double 0.000001 run scoreboard players get ::in value
execute if score ::in p matches 7 store result storage io: result double 0.0000001 run scoreboard players get ::in value
execute if score ::in p matches 8 store result storage io: result double 0.00000001 run scoreboard players get ::in value
