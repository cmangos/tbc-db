-- Just data alignment
DELETE FROM `instance_template` WHERE `map` IN (369, 449, 450);
INSERT INTO `instance_template` (`map`, `parent`, `levelMin`, `levelMax`, `maxPlayers`, `reset_delay`, `ScriptName`, `mountAllowed`) VALUES 
-- (30, 0, 0, 0, 0, 0, 0, 0, 0, '', 0), -- 30	0	10	0	50	0		0
(369, 0, 0, 0, 0, 0, '', 0),
(449, 0, 0, 0, 0, 0, '', 0),
(450, 0, 0, 0, 0, 0, '', 0);
-- (489, 0, 0, 0, 0, 0, 0, 0, 0, '', 0), -- 489	0	10	0	50	0		0
-- (529, 0, 0, 0, 0, 0, 0, 0, 0, '', 0); -- 529	0	10	0	50	0		0

