setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:4,sizeZ:5,name:"scaffolding_rush:base_team"}
setblock ~ ~1 ~ minecraft:redstone_block

execute if entity @s[name="Blue"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 blue_concrete_powder replace light_gray_concrete_powder
execute if entity @s[name="Green"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 lime_concrete_powder replace light_gray_concrete_powder
execute if entity @s[name="Red"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 red_concrete_powder replace light_gray_concrete_powder
execute if entity @s[name="Yellow"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 yellow_concrete_powder replace light_gray_concrete_powder
