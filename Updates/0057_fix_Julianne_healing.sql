-- https://github.com/cmangos/tbc-db/commit/69f117fba3827984f42600c0e617c935aad#diff-b1f79aefeba797495ca24cff97973a80b4b86daad4c2b48d017f89cda598c39dR8-R30
-- Fix Karazhan - Julianne Eternal Affection - wrong target so wont be executed
-- Heals: P1 :38 :46 :54 - P3 :05 :13 :22 :38 :49 :57 :17 :30 :50 :15 wipe so npcs might been maxhp at some point (p1 shows consistant 8sec repeat)
-- Phase 1 and Phase 3 Timers might be different! P1 at 25% missing P3 10% (but might also be due to init timer)
-- Need more data.
-- https://www.youtube.com/watch?v=hVjbzd0PcsM
UPDATE `creature_spell_list` SET `TargetId`=200, `InitialMin`=20000, `InitialMax`=30000, `RepeatMin`=8000, `RepeatMax`=16000, `Comments`='Julianne - Eternal Affection - Missing 10% including self' WHERE `Id`=1753401 AND `SpellId` = 30878;

