-- ========================================
-- Coilfang Reservoir: Serpentshrine Cavern
-- ========================================
-- 21212	Lady Vashj	1	2.14286
UPDATE `creature_template` SET `SpeedRun` = (15 / 7) WHERE `entry` = 21213; -- Morogrim Tidewalker 1.14286
UPDATE `creature_template` SET `SpeedRun` = (15 / 7) WHERE `entry` = 21214; -- Fathom-Lord Karathress 1.14286
-- 21215	Leotheras the Blind	1	2.14286
-- 21216	Hydross the Unstable	1	1.71429
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 21217; -- The Lurker Below 1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21218; -- Vashj'ir Honor Guard	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7), `SpellList` = 2122001 WHERE `entry` = 21220; -- Coilfang Priestess	1	1.14286
-- ('2122001','21220','0','0','100','1025','6000','12000','8000','12000','0','0','11','38582','1','0','0','0','0','0','0','0','0','0','Coilfang Priestess - Cast Holy Smite'),
-- ('2122002','21220','0','0','100','1025','3600','7800','10400','14200','0','0','11','38585','4','512','0','0','0','0','0','0','0','0','Coilfang Priestess - Cast Holy Fire'),
-- ('2122003','21220','14','0','100','1025','70000','40','16000','21000','0','0','11','38580','12','0','0','0','0','0','0','0','0','0','Coilfang Priestess - Cast Greater Heal on Friendly Missing HP'),
-- ('2122004','21220','2','0','100','1024','20','0','0','0','0','0','11','38580','0','0','0','0','0','0','0','0','0','0','Coilfang Priestess - Cast Greater Heal at 20% HP'),
DELETE FROM `creature_template_spells` WHERE `entry` = 21220; -- 0	38580	38582	38585	0	0	0	0	0	0	0
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122001, 'Serpentshrine Cavern - Coilfang Priestess (21220)', 100, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 2122001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122001, 1, 38580, 0, -1, 206, 0, 100, 100, 10000, 20000, 8000, 18000, 'Coilfang Priestess - Greater Heal - Missing 25% including self'),
(2122001, 2, 38582, 0, -1, 1, 0, 100, 1, 3000, 12000, 6000, 18000, 'Coilfang Priestess - Holy Smite - current'),
(2122001, 3, 38585, 0, -1, 100, 0, 100, 10, 5000, 15000, 6000, 18000, 'Coilfang Priestess - Holy Fire - random player');
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21221; -- Coilfang Beast-Tamer	1	1.14286
-- 21224	Tidewalker Depth-Seer	1.6	1.71429
-- 21225	Tidewalker Warrior	1.6	1.71429
-- 21226	Tidewalker Shaman	1.6	1.71429
-- 21227	Tidewalker Harpooner	1.6	1.71429
-- 21228	Tidewalker Hydromancer	1.6	1.71429
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21229; -- Greyheart Tidecaller	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21230; -- Greyheart Nether-Mage	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21231; -- Greyheart Shield-Bearer	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21232; -- Greyheart Skulker	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21246; -- Serpentshrine Sporebat	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21251; -- Underbog Colossus	1	1.14286
-- 21252	World Trigger (Not Immune PC)	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21253; -- Tainted Water Elemental	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21260; -- Purified Water Elemental	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21263; -- Greyheart Technician	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21298; -- Coilfang Serpentguard	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21299; -- Coilfang Fathom-Witch	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21301; -- Coilfang Shatterer	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21339; -- Coilfang Hate-Screamer	1	1.14286
-- 21508	Coilfang Frenzy	1	2.14286
UPDATE `creature_template` SET `SpeedRun` = (15 / 7) WHERE `entry` = 21689; -- Coilfang Frenzy Corpse	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21806; -- Greyheart Spellbinder	1	1.14286
UPDATE `creature_template` SET `SpeedRun` = (15 / 7) WHERE `entry` = 21812; -- Phantom Leotheras	1	1.14286
-- 21857	Inner Demon	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4.5 / 2.5) WHERE `entry` = 21863; -- Serpentshrine Lurker	1	1.14286
-- 21865	Coilfang Ambusher	1	1.42857
-- 21873	Coilfang Guardian	1	1.42857
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (15 / 7) WHERE `entry` = 21875; -- Shadow of Leotheras	1.2	1.14286
-- 21913	Water Globule	0.4	0.285714
-- 21920	Tidewalker Lurker	1.6	1.42857 - 1.71429?
UPDATE `creature_template` SET `SpeedRun` = (12 / 7) WHERE `entry` = 21932; -- Hydross the Unstable	1	1.14286
-- 21933	Hydross Beam Helper	1	1.14286
-- 21934	Hydross Cleansing Field Helper	1	1.14286
-- 21958	Enchanted Elemental	1	2.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21964; -- Fathom-Guard Caribdis	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21965; -- Fathom-Guard Tidalvess	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 21966; -- Fathom-Guard Sharkkis	1	1.14286
-- 21987	World Trigger (Tiny)	1	1.14286
-- 22009	Tainted Elemental	1	1.28968
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 22035; -- Pure Spawn of Hydross	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 22036; -- Tainted Spawn of Hydross	1	1.14286
-- 22055	Coilfang Elite	1	1.42857
-- 22056	Coilfang Strider	1	1
-- 22057	Invisible Stalker Coilfang Raid Console Emotes	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (7 / 7) WHERE `entry` = 22091; -- Spitfire Totem	0.001	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (3 / 7) WHERE `entry` = 22104; -- Cyclone (Karathress)	0.8	0.857143
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 22119; -- Fathom Lurker	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 22120; -- Fathom Sporebat	1	1.14286
-- 22140	Toxic Spore Bat	1	1.42857
-- 22207	Spore Drop Trigger	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7) WHERE `entry` = 22210; -- Priestess Spirit	1	1.14286
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 22236; -- Water Elemental Totem	1	1.14286
-- 22238	Serpentshrine Tidecaller	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 22250; -- Rancid Mushroom	1.2	1.14286
-- 22335	Mushrom Spell Effect	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4.5 / 2.5), `SpeedRun` = (15.59999942779541015 / 7) WHERE `entry` = 22347; -- Colossus Lurker	1	1.14286
UPDATE `creature_template` SET `SpeedWalk` = (4.5 / 2.5), `SpeedRun` = (15.59999942779541015 / 7) WHERE `entry` = 22352; -- Colossus Rager	1	1.14286
-- Serpentshrine Parasite (22379) - npc_serpentshrine_parasite
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 22486; -- Greater Earthbind Totem	1	1.14286
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 22487; -- Greater Poison Cleansing Totem	1	1.14286
UPDATE `creature_template` SET `SpeedRun` = (7 / 7) WHERE `entry` = 22820; -- Seer Olum	1	0.992063

