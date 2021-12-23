-- Remove Parry-Haste Ability from Nalorakk 23576 - ~patch 2.4
-- https://blue.mmo-champion.com/topic/67088-nalorakk-and-mother-shahraz-parry-fix/
-- Nalorakk and Mother Shahraz will no longer haste their attacks following a parry. - Feb. 23, 2008, 12:57 a.m.
-- https://www.bluetracker.gg/wow/topic/us-en/4823644205-nalorakk-and-mother-shahraz-parry-fix/
-- https://wowwiki-archive.fandom.com/wiki/Mother_Shahraz?diff=prev&oldid=1474542
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|8 WHERE `entry` = 23576;

