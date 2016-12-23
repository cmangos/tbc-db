-- Harbinger Ardonan
UPDATE creature_template SET FactionAlliance=1741, FactionHorde=1741, ExtraFlags=2 WHERE entry IN (21275);

-- Edward Cairn / Ian Drake Gossip
UPDATE creature_template SET GossipMenuId=9768, NPCFlags=NPCFlags|1 WHERE entry IN (29093,29095);

-- Fix NPC Speed
UPDATE creature_template SET SpeedWalk=1, SpeedRun=1.78 WHERE entry IN (18680);

-- Fix Respawn Time
UPDATE creature SET SpawnTimeSecs=43200 WHERE id IN (1696);

-- Add Missing TRainer Template for Mage Trainer in Undercity
UPDATE creature_template SET TrainerTemplateId=71 WHERE entry IN (23103);

-- Fix NPC Spawn Position for Quest Kroshius' infernal core
UPDATE creature SET position_x = 5800.89, position_y = -985.82, position_z = 409.78 WHERE id = 39715;


