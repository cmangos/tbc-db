-- Kyle the Friendly 23622 - no static spawn needed
DELETE FROM creature_addon WHERE guid IN(24761);
DELETE FROM `creature` WHERE `guid` = 24761 AND `id` = 23622;

