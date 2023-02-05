-- Add onkill rep for ravenhold faction
-- Kill Syndicate Members in Stromgarde Keep from 0/3000 neutral to 11999/12000 Honored (each kill is 5 rep or roughly 4200 kills)
-- https://www.wowhead.com/tbc/faction=349/ravenholdt#comments - for us it stops at 0/21k revered maybe error?
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
-- wotlkmangos
(2240, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2240	Syndicate Footpad
(2241, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2241	Syndicate Thief
(2242, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2242	Syndicate Spy
(2243, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2243	Syndicate Sentry
(2244, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2244	Syndicate Shadow Mage
(2245, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2245	Syndicate Saboteur
(2246, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2246	Syndicate Assassin
(2247, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2247	Syndicate Enforcer
(2260, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2260	Syndicate Rogue
(2261, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2261	Syndicate Watchman
(2319, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2319	Syndicate Wizard
(2586, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2586	Syndicate Highwayman
(2587, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2587	Syndicate Pathstalker
(2588, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2588	Syndicate Prowler
(2589, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2589	Syndicate Mercenary
(2590, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2590	Syndicate Conjuror
(2591, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2591	Syndicate Magus
(24477, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- tbc+ 24477	Syndicate Thief
-- NEW
(2318, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2318	Argus Shadow Mage
(2427, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2427	Jailor Eston
(2428, 349, 70, 5, 0, 5, 3, 0, -25, 0), -- 2428	Jailor Marlgen
(24476, 349, 70, 5, 0, 5, 3, 0, -25, 0); -- tbc+ 24476	Minor Voidwalker

