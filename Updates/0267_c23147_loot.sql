-- Correct Loot Template for Shadowmoon Grunt 23147 in 2.4.3
-- https://www.wowhead.com/npc=23147/shadowmoon-grunt#comments:id=166040
-- https://wowwiki.fandom.com/wiki/Patch_2.3.0
-- "Shadowmoon Grunts will no longer drop Black Temple quality loot."
DELETE FROM `creature_loot_template` WHERE `entry` = 23147 AND `item` IN (
12005, -- Epic Gem - TBC
32428 -- Heart of Darkness
);

