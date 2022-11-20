-- Add The Mortar: Reloaded to Goblin Engineering Trainer
-- Based on https://tbc.wowhead.com/spell=13240/the-mortar-reloaded
DELETE FROM npc_trainer_template WHERE entry = '1003' AND spell IN ('13240','12768');
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('1003', '12768', '1500', '202', '205', '0', '0'); -- 15s, 205skillvalue

-- used by
-- 8126	Nixx Sprocketspring	Goblin Engineering Trainer
-- 8738	Vazario Linkgrease	Goblin Engineering Trainer

