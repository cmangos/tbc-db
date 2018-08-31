-- Fix Z position of creature 74411 (Legion Fel Cannon 21233) in Netherstorm falling below map
UPDATE `creature` SET `position_z` = 155.90 WHERE `guid` = 74411 AND `id` = 21233;

-- Fix Z position of creature 74418 (Legion Fel Cannon 21233) in Nagrand falling below map
UPDATE `creature` SET `position_z` = 51.7520 WHERE `id` = 21233 AND `guid` = 74418;

