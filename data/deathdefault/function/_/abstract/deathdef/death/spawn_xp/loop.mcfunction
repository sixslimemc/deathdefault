#> deathdefault:_/abstract/deathdef/death
# spawn_xp/loop
#--------------------
# ./do
#--------------------

# DEBUG:
tellraw @a ["xp: ", {'score':{'name':'*death.drop_xp', 'objective':'_deathdefault'}}]

# random motion:
execute store result storage deathdefault:_ a.death.xp.x double .0001 run random value -5000..5000
execute store result storage deathdefault:_ a.death.xp.y double .0001 run random value 500..1000
execute store result storage deathdefault:_ a.death.xp.z double .0001 run random value -5000..5000

# weird vanilla xp chunking:
execute if score *death.drop_xp _deathdefault matches 73.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 73.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp

execute if score *death.drop_xp _deathdefault matches 37.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 37.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp

execute if score *death.drop_xp _deathdefault matches 17.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 17.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp

execute if score *death.drop_xp _deathdefault matches 7.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 7.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp

execute if score *death.drop_xp _deathdefault matches 3.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 3.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp

execute if score *death.drop_xp _deathdefault matches 1.. run data modify storage deathdefault:_ a.death.xp.xp set value 73
execute if score *death.drop_xp _deathdefault matches 1.. run return run function deathdefault:_/abstract/deathdef/death/spawn_xp/spawn with storage deathdefault:_ a.death.xp