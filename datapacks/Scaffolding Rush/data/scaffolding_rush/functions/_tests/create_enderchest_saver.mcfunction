summon marker ~ ~ ~ {Tags:["new_Echest_saver","Echest_saver"]}

#Link the marker to the player with a score
scoreboard players add Min Echest_saver_id 1
scoreboard players operation @s Echest_saver_id = Min Echest_saver_id
scoreboard players operation @e[tag=new_Echest_saver] Echest_saver_id = @s Echest_saver_id
tag @e remove new_Echest_saver

tag @s add enderchest_saver_created