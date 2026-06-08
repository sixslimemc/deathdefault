#> deathdefault:_/abstract/deathdef/death
# spawn_xp/do
#--------------------
# ../main
#--------------------

# save current xp to restore later:
function six:player/get_true_xp
data modify storage deathdefault:_ a.death.restore_xp set from storage six:out get_true_xp.result

# set xp bar to 0:
execute store result storage deathdefault:_ x.macro.xp int -1 run data get storage deathdefault:_ a.death.restore_xp
function deathdefault:_/abstract/deathdef/death/spawn_xp/xp_add with storage deathdefault:_ x.macro

# set xp bar to match {in -> xp}:
data modify storage deathdefault:_ x.macro.xp set from storage deathdef:abstract/in death.xp
function deathdefault:_/abstract/deathdef/death/spawn_xp/xp_add with storage deathdefault:_ x.macro

# get *drop_xp:
execute store result score *death.drop_xp _deathdefault run xp query @s levels
scoreboard players operation *death.drop_xp _deathdefault *= *7 _deathdefault
execute if score *death.drop_xp _deathdefault matches 101.. run scoreboard players set *death.drop_xp _deathdefault 100

# set xp bar back to 0:
execute store result storage deathdefault:_ x.macro.xp int -1 run data get storage deathdef:abstract/in death.xp
function deathdefault:_/abstract/deathdef/death/spawn_xp/xp_add with storage deathdefault:_ x.macro

# spawn orbs:
function deathdefault:_/abstract/deathdef/death/spawn_xp/loop

# restore:
data modify storage deathdefault:_ x.macro.xp set from storage deathdefault:_ a.death.restore_xp
function deathdefault:_/abstract/deathdef/death/spawn_xp/xp_add with storage deathdefault:_ x.macro
stopsound @a * minecraft:entity.player.levelup