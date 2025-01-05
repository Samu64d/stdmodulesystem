#
# time:date/main
#

# Current year
scoreboard players operation ::time year = ::time tick
scoreboard players operation ::time year /= ::time::const YEAR_SIZE
scoreboard players operation ::time year_tick = ::time tick
scoreboard players operation ::time year_tick %= ::time::const YEAR_SIZE

# Current month
scoreboard players operation ::time month = ::time year_tick
scoreboard players operation ::time month /= ::time::const MONTH_SIZE
scoreboard players operation ::time month_tick = ::time year_tick
scoreboard players operation ::time month_tick %= ::time::const MONTH_SIZE

# Current day of the month
scoreboard players operation ::time month_day = ::time month_tick
scoreboard players operation ::time month_day /= ::time::const DAY_SIZE

# Current day of the year
scoreboard players operation ::time year_day = ::time month
scoreboard players remove ::time year_day 1
scoreboard players operation ::time year_day *= ::int 31
scoreboard players operation ::time year_day += ::time month_day

# Current day of the week
scoreboard players operation ::time week_day = ::time day
scoreboard players operation ::time week_day %= ::int 7

# Current hour
scoreboard players operation ::time hour = ::time day_tick
scoreboard players operation ::time hour /= ::time::const HOUR_SIZE
execute if score ::time hour matches ..23 run scoreboard players add ::time hour 6
execute if score ::time hour matches 24.. run scoreboard players remove ::time hour 24
scoreboard players operation ::time hour_tick = ::time day_tick
scoreboard players operation ::time hour_tick %= ::time::const HOUR_SIZE

# Current minute
scoreboard players operation ::time min = ::time hour_tick
scoreboard players operation ::time min /= ::time::const MINUTE_SIZE
scoreboard players operation ::time min_tick = ::time hour_tick
scoreboard players operation ::time min_tick %= ::time::const MINUTE_SIZE

scoreboard players add ::time year 1
scoreboard players add ::time month 1
scoreboard players add ::time week_day 1
scoreboard players add ::time month_day 1
scoreboard players add ::time year_day 1
