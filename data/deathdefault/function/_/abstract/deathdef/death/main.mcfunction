#> deathdefault:_/abstract/deathdef/death
# main
#--------------------
# @ abstract : deathdef:death
#--------------------

# do xp:
function deathdefault:_/abstract/deathdef/death/spawn_xp/do

# do items:
function deathdefault:_/abstract/deathdef/death/spawn_items/do

data remove storage deathdefault:_ a.death
scoreboard players reset *death.drop_xp _deathdefault