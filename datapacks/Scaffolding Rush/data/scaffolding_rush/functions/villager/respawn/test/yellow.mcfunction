execute unless score YellowVillagerRespawn global matches 0.. run function scaffolding_rush:villager/respawn/yellow
title @a[scores={language=0},team=yellow] actionbar ["",{"text":"You can't respawn","color":"dark_red"}]
title @a[scores={language=1},team=yellow] actionbar ["",{"text":"Vous ne pouvez plus réapparaître","color":"dark_red"}]
