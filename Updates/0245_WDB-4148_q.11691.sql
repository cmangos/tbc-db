-- q.11691 'Summon Ahune' - UPDATE
-- texts should be displayed by Player.. instead of unknown source
-- Fixing error:
/*
DoDisplayText entry 24895 tried to process emote for invalid source Gameobject (Entry: 187882 Guid: 5470023)
 DB-SCRIPTS: Process table `dbscripts_on_quest_end` id 11691, could not display text 24895 properly
*/
UPDATE dbscripts_on_quest_end SET data_flags = 6 WHERE id = 11691 AND dataint > 1;

-- player displays these texts: 24894,24893,24895
-- Ahune, your strength grows no more!
-- Your frozen reign will not come to pass!
-- The Ice Stone has melted!

