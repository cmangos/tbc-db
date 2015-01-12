-- Fixed stats of NPC 13696 (Noxxious Scion) in Maraudon in order to make the quest 7029 and 7041 (Vyletongue Corruption - Alliance and Horde)
-- completable as the spawns were too strong
UPDATE `creature_template` SET `DamageMultiplier` = 1.57, `MinMeleeDmg` = 72, `MaxMeleeDmg` = 96 WHERE `Entry` = 13696; -- 1.6
