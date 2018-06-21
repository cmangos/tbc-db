UPDATE `creature_template` SET `NpcFlags`='0' WHERE `Entry`='18209';
UPDATE `creature_template` SET `NpcFlags`='0' WHERE `Entry`='18210';

UPDATE `creature` SET `spawntimesecsmin`='300', `spawntimesecsmax`='300' WHERE `guid`='84459';

UPDATE `creature_template` SET `ExtraFlags`='0' WHERE `Entry`='18209';
UPDATE `creature_template` SET `ExtraFlags`='0' WHERE `Entry`='18210';

UPDATE `creature_template_addon` SET `bytes1`='0' WHERE `entry`='18210';

DELETE FROM conditions WHERE condition_entry=3176;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('3176', '37', '18211', '10', 'Creature murkblood brute Alive and Within 10 yards');

DELETE FROM dbscripts_on_creature_death WHERE id=18211;
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('18211', '1', '34', '3176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stop if brute nearby'),
('18211', '2', '35', '0', '0', '0', '18210', '30', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Send AI event to enable QuestGiver (Horde)'),
('18211', '2', '35', '0', '0', '0', '18209', '30', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Send AI event to enable QuestGiver (Alliance)'),
('18211', '300', '35', '5', '0', '0', '18210', '30', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Send AI event to disable QuestGiver (Horde)'),
('18211', '300', '35', '5', '0', '0', '18209', '30', '4', '0', '0', '0', '0', '0', '0', '0', '0', 'Send AI event to disable QuestGiver (Alliance)');

