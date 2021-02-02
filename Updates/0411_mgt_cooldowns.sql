DELETE FROM creature_template_spells WHERE entry IN(24697);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
('24697', '0', '2', '44547', '44640', '0', '0', '0', '0', '0', '0', '0');
DELETE FROM creature_cooldowns WHERE entry IN(24697);
INSERT INTO creature_cooldowns VALUES
(24697,44547,11000,15000),
(24697,44640,6000,10000);

DELETE FROM creature_template_spells WHERE entry IN(25563);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
('25563', '0', '2', '44547', '44640', '0', '0', '0', '0', '0', '0', '0');
DELETE FROM creature_cooldowns WHERE entry IN(25563);
INSERT INTO creature_cooldowns VALUES
(25563,44547,11000,15000),
(25563,44640,4500,6000);

REPLACE INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
('24684', '0', '2', '44479', '44480', '44482', '0', '0', '0', '0', '0', '0'),
('24686', '0', '2', '44518', '44519', '44520', '0', '0', '0', '0', '0', '0'),
('24688', '0', '2', '44505', '44533', '0', '0', '0', '0', '0', '0', '0'),
('24690', '0', '2', '44503', '44504', '44505', '0', '0', '0', '0', '0', '0'),
('24689', '0', '2', '44534', '44505', '0', '0', '0', '0', '0', '0', '0'),
('24696', '0', '2', '35946', '20299', '17741', '44639', '0', '0', '0', '0', '0');

REPLACE INTO creature_cooldowns VALUES
(24696,20299,10000,15000),
(24696,17741,13000,19000),
(24696,44639,3000,6000);

REPLACE INTO creature_cooldowns VALUES
(24689,44534,5000,10000),
(24689,44505,32000,40000);

REPLACE INTO creature_cooldowns VALUES
(24690,44505,32000,40000);

REPLACE INTO creature_cooldowns VALUES
(24688,44505,32000,40000),
(24688,44533,1,4000);

REPLACE INTO creature_cooldowns VALUES
(24686,44518,10000,10000),
(24686,44519,6000,6000);

REPLACE INTO creature_cooldowns VALUES
(24684,44479,10000,10000),
(24684,44480,20000,20000);

REPLACE INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
('25568', '0', '2', '44475', '46028', '0', '0', '0', '0', '0', '0', '0'),
('25565', '0', '2', '46029', '46030', '46033', '0', '0', '0', '0', '0', '0'),
('25572', '0', '2', '46042', '46043', '44520', '0', '0', '0', '0', '0', '0'),
('25570', '0', '2', '46192', '46046', '0', '0', '0', '0', '0', '0', '0'),
('25575', '0', '2', '44534', '44505', '0', '0', '0', '0', '0', '0', '0'),
('25577', '0', '2', '44505', '44533', '0', '0', '0', '0', '0', '0', '0'),
('25576', '0', '2', '44503', '44504', '44505', '0', '0', '0', '0', '0', '0'),
('25547', '0', '2', '22907', '46150', '46151', '44639', '0', '0', '0', '0', '0');

REPLACE INTO creature_cooldowns VALUES
(25568,44475,30000,30000),
(25568,46028,11000,19000),

(25565,46029,10000,10000),
(25565,46030,20000,20000),

(25572,46042,10000,10000),
(25572,46043,6000,6000),

(25570,46192,15000,15000),
(25570,46046,10000,15000),

(25575,44534,6000,10000),
(25575,44505,20000,25000),

(25577,44505,20000,25000),
(25577,44533,1,4000),

(25576,44505,20000,25000),

(25547,46150,10000,15000),
(25547,46151,14000,20000),
(25547,44639,3000,6000);

