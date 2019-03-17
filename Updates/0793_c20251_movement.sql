-- Correct Stats for Honor Hold Scout Archery Target 20251
-- it seems spell_script_target always targets the closest available target defined in spell_script_target, not random
UPDATE `creature` SET `modelid` = 0, `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 20251;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 20251 AND `guid` IN (96995,96997,96998);

