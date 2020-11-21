-- Twilight Ridge Target 22400 - always flying and no random movement
UPDATE `creature_template` SET `InhabitType`=4, `MovementType`=0 WHERE `Entry`=22400;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=22400;


