-- q.4901 'Guardians of the Altar'

-- Added missing GO 177414 (Gem of Elune), 177415 (Light of Elune), 177416 (Aura of Elune) in Winterspring
DELETE FROM gameobject WHERE guid IN (63182, 63190, 65375, 65883, 65885, 65887, 65903, 65904);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(63182, 177414, 1, 5514.49, -4917.57, 850.538, 2.3911, 0, 0, 0.930417, 0.366502, -900, 100, 1),
(63190, 177415, 1, 5510.28, -4929.31, 845.214, 1.62064, 0, 0, 0.724507, 0.689267, -600, 255, 1),
(65375, 177415, 1, 5520.35, -4925.22, 843.644, 2.13507, 0, 0, 0.876015, 0.482283, -600, 255, 1),
(65883, 177415, 1, 5526.7, -4916.41, 843.452, 3.01865, 0, 0, 0.998111, 0.0614331, -600, 255, 1),
(65885, 177415, 1, 5501.69, -4920.04, 848.791, 0.155868, 0, 0, 0.0778553, 0.996965, -600, 255, 1),
(65887, 177415, 1, 5505.09, -4909.36, 848.961, 5.63402, 0, 0, 0.318914, -0.947784, -600, 255, 1),
(65903, 177415, 1, 5515.71, -4905.82, 846.322, 4.62478, 0, 0, 0.737392, -0.675466, -600, 255, 1),
(65904, 177416, 1, 5514.49, -4917.57, 845.538, 2.3911, 0, 0, 0.930417, 0.366502, -900, 100, 1);

UPDATE gameobject_template SET size = 8 WHERE entry = 177414;
UPDATE gameobject_template SET size = 0.5 WHERE entry = 177415;
UPDATE gameobject_template SET size = 5 WHERE entry = 177416;


