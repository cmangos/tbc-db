-- q.10439 'Dimensius the All-Devouring'

-- delete old script for Captain Saeed, which will now be done in SD2 escortAI
DELETE FROM dbscript_string WHERE entry IN (2000005780,2000005781,2000005782,2000005783,2000005784);
UPDATE gossip_menu_option SET action_script_id=0 WHERE menu_id=8228;
DELETE FROM dbscripts_on_gossip WHERE id IN (822801,822802);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2098501,2098536,2098541);
DELETE FROM creature_movement_template where entry=20985;
DELETE FROM dbscripts_on_creature_death WHERE id=19554;

-- handle gossip option selections in SD2
UPDATE gossip_menu_option SET option_id=100 WHERE menu_id=8228 AND id=0;
UPDATE gossip_menu_option SET option_id=101 WHERE menu_id=8228 AND id=1;

-- when this condition is checked, Captain Saeed has not started waypoint movement yet
UPDATE conditions SET value2=961, comments='(Quest ID 10439 Taken AND Source of Condition''s Last Waypoint == 0)' WHERE condition_entry=970; -- 462
DELETE FROM conditions WHERE condition_entry=961;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
('961', '33', '0', '0', 'Source of Condition\'s Last Waypoint == 0');

-- correct model data for Dimensius
UPDATE creature_model_info SET bounding_radius=8, combat_reach=10.4 WHERE modelid=18988;

-- 37425 Logic Tick (Dimensius) should be casted on aggro by Dimensius? purpose unknown

-- add FLAG_RESPAWN_ON_RESPAWN linking of Protectorate allies to Captain Saeed
UPDATE creature_linking_template SET flag=flag|128 WHERE entry IN (20984,21783,21805);


