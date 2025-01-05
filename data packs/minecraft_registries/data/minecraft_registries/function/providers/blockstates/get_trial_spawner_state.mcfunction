#
# minecraft_registries:provider/blockstates/get_trial_spawner_state
#

# These commands are auto generated. Do not modify
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=inactive] run data modify storage io: property_value set value "inactive"
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=waiting_for_players] run data modify storage io: property_value set value "waiting_for_players"
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=active] run data modify storage io: property_value set value "active"
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=waiting_for_reward_ejection] run data modify storage io: property_value set value "waiting_for_reward_ejection"
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=ejecting_reward] run data modify storage io: property_value set value "ejecting_reward"
execute if block ~ ~ ~ #minecraft_registries:all[trial_spawner_state=cooldown] run data modify storage io: property_value set value "cooldown"
