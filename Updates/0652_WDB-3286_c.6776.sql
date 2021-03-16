-- Magrin Rivermane 6776
-- Magrin Rivermane is not a vendor in tbc or classic.
-- https://tbc.wowhead.com/npc=6776/magrin-rivermane
-- https://classic.wowhead.com/npc=6776/magrin-rivermane
UPDATE creature_template SET NpcFlags = 2, VendorTemplateId = 0 WHERE entry = 6776;

-- Ghostpaw Runner trapped on the statue
UPDATE creature SET position_x = 2718.5, position_y = -106.26, position_z = 96.052, spawndist = 5, MovementType = 1 WHERE guid = 34977;

