-- Zungam - re-add UNIT_NPC_FLAG_VENDOR
-- it's actually added via script, but we'll give it to him by default and remove on spawn to suppress DB errors
UPDATE creature_template SET NpcFlags=NpcFlags|128 WHERE entry=23897;

-- Magister Aledis - give gossip flag by default to suppress another DB error
UPDATE creature_template SET NpcFlags=NpcFlags|1 WHERE entry=20159;

-- add missing gossip menu from Classic-DB
UPDATE `creature_template` SET `GossipMenuId` = 347 WHERE `entry` = 6737; -- Innkeeper Shaussiy
DELETE FROM gossip_menu WHERE entry=347;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(347, 824, 0, 0);

-- these two "Translocate" spells have a spell_target_position, not a spell_script_target
DELETE FROM spell_script_target WHERE entry IN (45368,45371); -- 45368 -> 187428, 45371 -> 187431


