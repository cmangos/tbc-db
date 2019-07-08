-- missing models
UPDATE `creature_template` SET `ModelId2` = 16733, `ModelId3` = 16734, `ModelId4` = 16735 WHERE `Entry` = 17056;

-- remove incorrect spawns
DELETE FROM creature WHERE id in (15882, 15883);
-- fix wrong orientation
UPDATE creature SET orientation = 1.9249 WHERE guid = 59449;


