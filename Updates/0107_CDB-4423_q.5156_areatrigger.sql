-- https://github.com/cmangos/classic-db/commit/8e23b4bafa4cdc124bd4b34f7b6606f79a5adda0
-- Fixes area trigger for q.5156 'Verifying the Corruption' - all 3 craters are eligable for quest completion!
DELETE FROM `areatrigger_involvedrelation` WHERE `quest` = 5156; -- 2206 and 2208 where missing (same in wotlk). all were missing in classic
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
(2206, 5156), -- 2206 	1 	5483.899902 	-749.880981 	334.621002 	30.00 	0.00 	0.00 	0.00 	0.00
(2207, 5156), -- 2207 	1 	5552.089844 	-683.812988 	335.250000 	25.00 	0.00 	0.00 	0.00 	0.00
(2208, 5156); -- 2208 	1 	5587.020020 	-784.025024 	335.821991 	23.00 	0.00 	0.00 	0.00 	0.00

