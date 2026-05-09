-- Improve Carnivorous Bite & Attract Magic Timer for Shirrak the Dead Watcher
-- "Melee range bleed debuff that is applied on all nearby players roughly every ten seconds."
-- "He seems to always trigger it right after using "Attract Magic" (so that everyone getting pulled in will get it before being able to move away)."
-- https://www.wowhead.com/tbc/npc=18371/shirrak-the-dead-watcher
-- https://github.com/cmangos/tbc-db/commit/c084a0374bdf4749fe29cf5acf5c30fc58a33399
-- https://github.com/cmangos/mangos-tbc/commit/30d1f853e6484a8906b9b276cf434ee20a7eabea
UPDATE `creature_spell_list` SET `InitialMin` = 5000, `InitialMax` = 10000, `RepeatMin` = 6000, `RepeatMax` = 14000 WHERE `Id` = 1837101 AND `SpellId` = 36383; -- Shirrak - Carnivorous Bite Normal (4000, 7000, 4000, 10000)
UPDATE `creature_spell_list` SET `InitialMin` = 5000, `InitialMax` = 10000, `RepeatMin` = 6000, `RepeatMax` = 14000 WHERE `Id` = 2031801 AND `SpellId` = 39382; -- Shirrak - Carnivorous Bite Heroic (4000, 7000, 4000, 10000)
UPDATE `creature_spell_list` SET `InitialMin` = 20000, `InitialMax` = 30000, `RepeatMin` = 30000, `RepeatMax` = 60000 WHERE `Id` = 1837101 AND `SpellId` = 32265; -- Shirrak - Attract Magic Normal (20000, 24000, 25000, 38000)
UPDATE `creature_spell_list` SET `InitialMin` = 20000, `InitialMax` = 30000, `RepeatMin` = 20000, `RepeatMax` = 40000 WHERE `Id` = 2031801 AND `SpellId` = 32265; -- Shirrak - Attract Magic Heoric (20000, 24000, 25000, 38000)

