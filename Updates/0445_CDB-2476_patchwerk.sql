-- Fix stats for NPC 16028 (Patchwerk) in Naxxramas (5 to 10k unmitigated damage - Offhand/Mainhand)
-- https://tbc.wowhead.com/npc=16028/patchwerk#comments:id=2811088 - I was watching a vid a second ago, he hits full tier 2/2.5 tanks for 5-8k per hit normal
-- https://tbc.wowhead.com/npc=16028/patchwerk#comments:id=2811234 - i think.ive seen some videos of him hitting rogues for 8.8k
-- https://wowwiki-archive.fandom.com/wiki/Patchwerk_(original) - Normal hit with melee is 1800-2700 (depends on gear)
-- bestiary (2.3) 8319-8923 i guess thats mainhand ~2500 to ~12500, other bosses now have multis between 40 and 50
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='100' WHERE `entry`='16028'; -- Patchwerk (1200H)(1P)(250D)(1A) - VMangos 67.5 variance 0.14 / classicmangos 35

