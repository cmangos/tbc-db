-- Fix DB Errors
UPDATE creature_template SET MinLevelHealth=4050, MaxLevelHealth=4050 WHERE entry=22521;
UPDATE creature_template SET MinLevelHealth=6720, MaxLevelHealth=6720 WHERE entry=23265;
DELETE FROM db_script_string WHERE entry=2000005147; -- Moved to ACID

-- Illidari Overseer wanted to be a fisherman, it's not his destiny however...
UPDATE creature SET equipment_id=0 WHERE guid=150193;

-- Ashtongue Shaman
UPDATE creature SET equipment_id=0 WHERE id=21453;

-- Stormwind Soldier - The Stair of Destiny
UPDATE creature SET equipment_id=0 WHERE id=18948;

-- Eroded Leather Case
-- Starts quest: Missing Missive (9373)
-- does not drop currently as it requires 9373
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=23338;

-- Flora of the Eco-Domes
-- fix incorrect ID for creatures which need to be killed for quest credit
UPDATE quest_template SET ReqCreatureOrGOId1=20983 WHERE entry=10426;

-- Apexis Guardians had no static spawns after patch 2.1
DELETE FROM creature WHERE id=22275;

-- Terrordar the Tormentor - removed after 2.1
DELETE FROM creature WHERE id=22385;

-- Know Thine Enemy (9567)
-- Correct position of objects so they aren't floating, remove duplicates
-- Nazzivus Monument and Dark Braziers
UPDATE gameobject_template SET size=1.23 WHERE entry IN (182212,182015,182016);
-- Nazzivus Monument Glyphs (no despawn after use)
UPDATE gameobject_template SET size=2.5, flags=flags|32 WHERE entry=182532;
-- remove duplicates and respawn Nazzivus Monument, Nazzivus Monument Glyphs, and Dark Braziers
DELETE FROM gameobject WHERE id IN (182212,182532,182015,182016);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(44724, 182532, 530, 1, -2309.816, -11265.79, 36.36997, 3.106652, 0, 0, 0.9998474, 0.01746928, 0, 100, 1), -- location confirmed
(44725, 182212, 530, 1, -2300.86, -11266.4, 35.7, 3.05441, 0, 0, 0.99905, 0.0435775, 300, 100, 1), -- guessed, not official position
(66127, 182015, 530, 1, -2307.572, -11258.4, 38.09388, 3.174276, 0, 0, -0.9998665, 0.01634102, 300, 255, 1), -- location confirmed
(43231, 182016, 530, 1, -2308.392, -11272.69, 38.22277, 5.852986, 0, 0, -0.2134447, 0.9769552, 300, 255, 1); -- location confirmed

-- These creatures were hostile until some point in WotLK
-- Tender 15271
-- Feral Tender 15294
-- Vampiric Mistbat 16354
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (15271,15294,16354);

-- The Woodland Protector quest text fix
UPDATE `quest_template` SET `OfferRewardText`='Your service to the creatures of Shadowglen is worthy of reward, $N.$b$bYou confirmed my fears, however. If the grells have become tainted by the Fel Moss, one can only imagine what has become of the Gnarlpine tribe of furbolgs who once lived here.$b$bShould you find yourself in Dolanaar, able $C, seek out the knowledgeable druid, Athridas Bearmantle. He shares our concern for the well being of the forest.' WHERE `entry`=459;

-- The Twin Ziggurats (9176)
-- these chests containing Stone of Flame (22599) and Stone of Light (22598) do not despawn
UPDATE gameobject SET spawntimesecs=0 WHERE id=181238;
UPDATE gameobject SET spawntimesecs=0 WHERE id=181239;

-- Fix horrible links in ZF
DELETE FROM creature_linking WHERE guid=45710;
DELETE FROM creature_linking WHERE guid=81549;
DELETE FROM creature_linking WHERE master_guid=81598;
DELETE FROM creature_linking WHERE master_guid=81601;


