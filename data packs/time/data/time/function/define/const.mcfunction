#
# time:define/const
#

# Durations
scoreboard objectives add YEAR_SIZE dummy
scoreboard objectives add MONTH_SIZE dummy
scoreboard objectives add WEEK_SIZE dummy
scoreboard objectives add DAY_SIZE dummy
scoreboard objectives add HOUR_SIZE dummy
scoreboard objectives add MINUTE_SIZE dummy

scoreboard players set ::time::const YEAR_SIZE 8640000
scoreboard players set ::time::const MONTH_SIZE 720000
scoreboard players set ::time::const WEEK_SIZE 168000
scoreboard players set ::time::const DAY_SIZE 24000
scoreboard players set ::time::const HOUR_SIZE 1000
scoreboard players set ::time::const MINUTE_SIZE 17
