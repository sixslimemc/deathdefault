#> deathdefault:_/sc/load
# @ LOAD

scoreboard objectives add _deathdefault dummy



# DEBUG
scoreboard players reset *init _deathdefault

execute unless score *init _deathdefault matches 1 run function deathdefault:_/sc/init