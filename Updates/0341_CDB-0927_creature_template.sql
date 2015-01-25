-- Fixed stats of NPC 12238 (Zaetar's Spirit) in Maraudon
-- Source: TBC-DB, UDB and https://www.youtube.com/watch?v=foGlLZofce4
-- https://tbc.wowhead.com/npc=12238/zaetars-spirit
UPDATE `creature_template` SET `MinLevelHealth` = 3297, `MaxLevelHealth` = 3297 WHERE `Entry` = 12238;
