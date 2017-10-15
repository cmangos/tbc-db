-- Creates condition specifically for druids with Aquatic Pendant quest (Water form)
-- Conditions 10 & 11 : Has quest (Alliance or Horde version) but not complete)
DELETE FROM conditions WHERE condition_entry=233;
INSERT INTO conditions VALUES 
(233, -2, 10, 11, NULL);

-- Adds the previously created condition ID to gossip menu options related to quests 30 and 272
UPDATE gossip_menu_option SET condition_id=233 WHERE menu_id IN (4041, 4042) AND id=1;

