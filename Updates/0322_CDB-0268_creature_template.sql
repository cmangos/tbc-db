-- Increased stats for creature 2058 (Deathstalker Faerleia) as she should be able to almost solo the quest The Pyrewood Ambush
-- Values based on TBC-DB/UDB and wowwiki.com
UPDATE `creature_template` SET `minlevelhealth` = 1251, `maxlevelhealth` = 1251, `armor` = 782, `MinMeleeDmg` = 26, `MaxMeleeDmg` = 35, `MeleeAttackPower` = 64  WHERE `entry` = 2058;

