-- Remove Reputation for Arcane Fiend 18429,20252 & Protean Spawn 21395,21609
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (
18429,20252, -- Arcane Fiend
21395,21609 -- Protean Spawn
);

