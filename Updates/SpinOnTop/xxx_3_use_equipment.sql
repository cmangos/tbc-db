
UPDATE `creature_template` as a INNER JOIN `creature_equip_template` as b ON a.entry=b.entry SET a.equipmenttemplateid=a.entry;

DELETE FROM `game_event_creature_data` WHERE `guid`='79676' and`event`='27'; -- a Witch Light in the Dustwallow Marsh
DELETE FROM `game_event_creature_data` WHERE `guid`='12095' and`event`='27'; -- a Gnoll Poacher in Redridge Mountains
