-- Correct Faction for Magtheridon's Head 184640
-- otherwise just clickable to activate it
UPDATE `gameobject_template` SET `faction` = 114 WHERE `entry` = 184640;