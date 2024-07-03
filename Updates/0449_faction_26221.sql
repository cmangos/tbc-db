-- Correct default faction for Earthen Ring Elder ( Shattrath City  (4), Stormwind City  (3), Orgrimmar , and Teldrassil)
-- https://github.com/cmangos/issues/issues/3735#issuecomment-2209427658
-- https://www.wowhead.com/tbc/npc=26221/earthen-ring-elder
UPDATE `creature_template` SET `Faction` = 1727 WHERE `entry` = 26221; -- 1732

