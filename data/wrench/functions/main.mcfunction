scoreboard objectives add sethome trigger
scoreboard players enable @a sethome 
execute as @a[scores={sethome=1..}] at @s run function wrench:sethome
scoreboard players set @a sethome 0
