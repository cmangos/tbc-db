-- UDB_269
-- Jaina, Thrall and Tyrande - Hyjal Summit
-- Script id: 17772
DELETE FROM dbscripts_on_creature_death WHERE id = 17772;
INSERT INTO dbscripts_on_creature_death VALUES 
(17772,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Jaina (Hyjal Summit instance) - force despawn.'),
(17772,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Jaina (Hyjal Summit instance) - respawn.');
-- Script id: 17852
DELETE FROM dbscripts_on_creature_death WHERE id = 17852;
INSERT INTO dbscripts_on_creature_death VALUES 
(17852,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Thrall (Hyjal Summit instance) - force despawn.'),
(17852,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Thrall (Hyjal Summit instance) - respawn.');
-- Script id: 17948
DELETE FROM dbscripts_on_creature_death WHERE id = 17948;
INSERT INTO dbscripts_on_creature_death VALUES 
(17948,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Tyrande (Hyjal Summit instance) - force despawn.'),
(17948,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Tyrande (Hyjal Summit instance) - respawn.');
-- Medivh - Dark Portal instance.
-- Script id: 15608
DELETE FROM dbscripts_on_creature_death WHERE id = 15608;
INSERT INTO dbscripts_on_creature_death VALUES 
(15608,10,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Medivh (Dark Portal instance) - force despawn.'),
(15608,15,41,0,0,0,0,68,0,0,0,0,0,0,0,0,'Medivh (Dark Portal instance) - respawn.');

