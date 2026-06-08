#> deathdefault:_/sc/load
# @ LOAD

scoreboard objectives add _deathdefault dummy

execute unless score *init _deathdefault matches 1 run function deathdefault:_/sc/init

scoreboard players set *7 _deathdefault 7