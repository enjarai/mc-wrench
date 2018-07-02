scoreboard objectives add sethome trigger
scoreboard players enable @a sethome 
execute as @a[scores={sethome=1..}] at @s run function wrench:sethome
scoreboard players set @a sethome 0

scoreboard players add @a homey 0

scoreboard objectives add home trigger
scoreboard players enable @a home 
execute as @a[scores={home=1..,homey=1..}] at @s run function wrench:home
execute as @a[scores={home=1..,homey=0}] at @s run tellraw @s ["",{"text":"No home set...","color":"yellow"}]
scoreboard players set @a home 0
