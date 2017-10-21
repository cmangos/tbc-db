-- Updated faction for creature 14364 (Shen'Dralar Spirit), 14358 (Shen'Dralar Ancient), 14361 (Shen'Dralar Wisp), 14371 (Shen'Dralar Provisioner)
-- 14383 (Lorekeeper Kildrath, 14382 (Lorekeeper Mykos), 14381 (Lorekeeper Javon), 14368 (Lorekeeper Lydros) and 16032 (Falrin Treeshaper)
-- They all should have the Shen'Dralar faction instead of the Wolf/Undercity/Creature they currently have
-- Source: http://www.wowwiki.com/Shen%27dralar
UPDATE `creature_template` SET `FactionAlliance` = 1354, `FactionHorde` = 1354 WHERE `entry` IN (14358, 14361, 14364, 14371, 14383, 14382, 14381);
UPDATE `creature_template` SET `FactionAlliance` = 1355, `FactionHorde` = 1355 WHERE `entry` IN (14368, 16032);

