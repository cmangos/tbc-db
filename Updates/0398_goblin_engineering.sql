-- Add The Mortar: Reloaded to Goblin Engineering Trainer
-- Based on https://tbc.wowhead.com/spell=13240/the-mortar-reloaded
DELETE FROM npc_trainer_template WHERE entry = '1003' AND spell '13240';
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `condition_id`) VALUES ('1003', '13240', '1500', '202', '205', '0', '0');