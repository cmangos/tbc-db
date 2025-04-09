-- ----------------
-- Stormwind
-- Quest - The Touch of Zanzil (id 2608) new script 
-- ---------------

-- Quest Start RP
DELETE FROM dbscripts_on_quest_start WHERE id IN (2608);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2608, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Set ActiveObject'),
-- Dont ask me why, but he looses npc flags when he says text and that happens after 4 seconds
(2608, 4000, 0, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Remove NpcFlags'),
(2608, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 3567, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - Say Text'),
-- If nothing happens for 3 minutes he gets back npc flags - using cai phasing
(2608, 4000, 2, 35, 5, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'The Touch of Zanzil - Doc Mixilpixil - SendAiEventA to self');

-- RelayScript that gives Doc micilpixil npc flags back when no player used /lay, started via CAI after 3minutes
DELETE FROM dbscripts_on_quest_start WHERE id IN (7207);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(7207, 0, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Add NpcFlags'),
(7207, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Doc Mixilpixil - Remove ActiveObject');