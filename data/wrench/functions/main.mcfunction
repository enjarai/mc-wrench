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

scoreboard objectives add wrenchid dummy
scoreboard players add @a wrenchid 0
scoreboard objectives setdisplay list wrenchid

execute as @a[scores={wrenchid=0}] at @s run scoreboard players add #global wrenchid 1
execute as @a[scores={wrenchid=0}] at @s run scoreboard players operation @s wrenchid = #global wrenchid

execute as @e[nbt={Inventory:[{Slot:-106b,id:minecraft:torch}]} at @s run function wrench:dynamiclights
