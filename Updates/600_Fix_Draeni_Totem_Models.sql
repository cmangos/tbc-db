-- =======================
-- Fix Draeni Totem Models
-- =======================
DELETE FROM `creature_model_race` WHERE modelid IN (892,2281,15374,21243,20857,4590,4589,4588,4587);
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('892', '690', '0', '8571');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('2281', '690', '0', '2289');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('15374', '690', '0', '15375');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('21243', '690', '0', '21244');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('20857', '690', '0', '20872');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('4590', '1024', '0', '19071');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('4589', '1024', '0', '19074');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('4588', '1024', '0', '19073');
INSERT INTO `creature_model_race` (`modelid`, `racemask`, `creature_entry`, `modelid_racial`) VALUES ('4587', '1024', '0', '19075');

