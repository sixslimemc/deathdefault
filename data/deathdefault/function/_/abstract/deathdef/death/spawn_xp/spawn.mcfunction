#> deathdefault:_/abstract/deathdef/death
# spawn_xp/spawn
#--------------------
# ./loop
#--------------------

$summon experience_orb ~ ~ ~ {Value:$(xp), Motion:[$(x)d, $(y)d, $(z)d]}

$scoreboard players remove *death.drop_xp _deathdefault $(xp)
$xp add @s -$(xp) points

execute if score *death.drop_xp _deathdefault matches 1.. run function deathdefault:_/abstract/deathdef/death/spawn_xp/loop