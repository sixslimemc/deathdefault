#> deathdefault:_/abstract/deathdef/death
# spawn_items/each
#--------------------
# ./do
#--------------------

data modify storage deathdefault:_ a.death.item.item set from storage deathdef:abstract/in death.items[-1].item

execute store result storage deathdefault:_ a.death.item.x double .0001 run random value -4000..4000
execute store result storage deathdefault:_ a.death.item.y double .0001 run random value 2000..2300
execute store result storage deathdefault:_ a.death.item.z double .0001 run random value -4000..4000

function deathdefault:_/abstract/deathdef/death/spawn_items/spawn with storage deathdefault:_ a.death.item

data remove storage deathdef:abstract/in death.items[-1]
execute if data storage deathdef:abstract/in death.items[0] run function deathdefault:_/abstract/deathdef/death/spawn_items/each

