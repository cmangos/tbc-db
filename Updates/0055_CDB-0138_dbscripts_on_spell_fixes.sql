-- Added Spellspcripts for Spells 11885, 11886, 1887, 11888, 11889 Despawning the corpse after use of the muisek vessel
-- for muisek quests in Feralas
DELETE FROM `dbscripts_on_spell` WHERE `id` IN(11885,11886,11887,11888,11889);
INSERT INTO `dbscripts_on_spell` (id, delay, command, comments) VALUES 
(11885, 3, 18, 'Despawn treant corpse'),
(11886, 3, 18, 'Despawn wildkin corpse'),
(11887, 3, 18, 'Despawn hyppogryph corpse'),
(11888, 3, 18, 'Despawn faerie dragon corpse'),
(11889, 3, 18, 'Despawn mountain giant corpse');

