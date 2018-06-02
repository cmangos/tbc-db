-- Unseen Servant 8538 http://www.wowhead.com/npc=8538/unseen-servant#comments:id=164759
UPDATE `creature_template` SET `damageschool` = 5 WHERE `entry` = 8538;

-- http://www.wowhead.com/npc=14457/princess-tempestria#comments:id=298819
UPDATE `creature_template` SET `damageschool` = 4 WHERE `entry` = 14457;

-- http://www.wowhead.com/npc=14686/lady-faltheress#comments:id=425542
UPDATE `creature_template` SET `damageschool` = 5 WHERE `entry` = 14686;

-- http://wowwiki.wikia.com/wiki/Giant_Infernal
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 17908;

-- http://wowwiki.wikia.com/wiki/Hydross_the_Unstable
UPDATE `creature_template` SET `damageschool` = 4 WHERE `entry` = 22035;
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 22036;

-- http://www.wowhead.com/npc=22298/vile-fire-soul#comments:id=31877
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 22298;

-- http://www.wowhead.com/npc=22310/storming-wind-ripper#comments:id=31065
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 22310;

-- http://www.wowhead.com/npc=22311/raging-fire-soul#comments:id=741419 <- interesting comment about a supposed blizzlike mechanic
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 22311;

-- http://www.wowhead.com/npc=22881/aqueous-surger#comments:id=203836
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 22881;

-- http://wowwiki.wikia.com/wiki/Vexallus
UPDATE `creature_template` SET `damageschool` = 6 WHERE `entry` = 25573;

-- Ember of Azzinoth - DamageSchool Fire http://www.wowhead.com/npc=23192/ember-of-azzinoth#comments:id=327761
-- http://www.wowhead.com/npc=23192/ember-of-azzinoth#comments:id=741416 <- interesting comment about a supposed blizzlike mechanic
UPDATE `creature_template` SET `DamageSchool` = 2 WHERE `entry` = 23192;

-- -------------------------------

-- Confirmed by wotlk-db and TrinityDB
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 14454;

-- Confirmed by wotlk-db and TrinityDB
UPDATE `creature_template` SET `damageschool` = 4 WHERE `entry` = 14458;

-- Confirmed by wotlk-db and TrinityDB
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 14461;

-- Confirmed by TrinityDB
UPDATE `creature_template` SET `damageschool` = 5 WHERE `entry` = 18659;

-- Confirmed by TrinityDB
UPDATE `creature_template` SET `damageschool` = 6 WHERE `entry` = 18865;

-- Confirmed by TrinityDB
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 18881;

-- Confirmed by TrinityDB
UPDATE `creature_template` SET `damageschool` = 5 WHERE `entry` = 19480;

-- Confirmed by TrinityDB
UPDATE `creature_template` SET `damageschool` = 3 WHERE `entry` = 20774;

-- Confirmed ingame patch 7.3 (https://i.imgur.com/xE1tnSM.png)
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 21061;

-- Unconfirmed
UPDATE `creature_template` SET `damageschool` = 2 WHERE `entry` = 22286;

-- http://www.wowhead.com/npc=22309/crashing-wave-spirit#comments:id=148944
UPDATE `creature_template` SET `damageschool` = 4 WHERE `entry` = 22309;

-- Unconfirmed
UPDATE `creature_template` SET `damageschool` = 4 WHERE `entry` = 25040;
