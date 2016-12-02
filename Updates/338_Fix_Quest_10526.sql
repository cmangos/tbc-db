-- ===============
-- Fix Gor Grimgut - Equipment Data Is Completely Guessed (No UDB / YTDB Data Available)
-- ===============
UPDATE creature_template SET FactionAlliance=1781, FactionHorde=1781, EquipmentTemplateId=107, MovementType=0 WHERE Entry=21319;
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('107','30435','0','0');


