-- ===================
-- Fixes by Killerwife
-- ===================
-- Great Murkblood Revolt backport and cleanup
-- http://www.wowhead.com/quest=11081/the-great-murkblood-revolt

UPDATE creature_template SET FactionAlliance=14,FactionHorde=14 WHERE entry=23286; -- proper faction taken from udb

DELETE FROM creature WHERE guid between 140513 and 140536;
-- Black Blood of Draenor - (Shadowmoon Valley) 
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140513,23286,530,1,0,0,-5089.01,344.069,4.01021,5.5254,300,5,0,5240,0,0,1),
(140514,23286,530,1,0,0,-5028.71,397.794,-12.9515,5.43508,300,5,0,5240,0,0,1),
(140515,23286,530,1,0,0,-5046.71,400.054,-12.3586,1.27325,300,5,0,5240,0,0,1),
(140516,23286,530,1,0,0,-5049.42,445.07,-12.0961,3.54383,300,5,0,5240,0,0,1),
(140517,23286,530,1,0,0,-5076.71,424.111,-12.3675,2.95635,300,5,0,5240,0,0,1),
(140518,23286,530,1,0,0,-5022.75,430.781,-10.0339,0.303842,300,5,0,5240,0,0,1),
(140519,23286,530,1,0,0,-5013.32,459.255,-7.65362,6.22966,300,5,0,5240,0,0,1),
(140520,23286,530,1,0,0,-5000,445.478,-6.96391,2.93885,300,5,0,5240,0,0,1),
(140521,23286,530,1,0,0,-5115.25,384.494,-12.52,1.63298,300,5,0,5240,0,0,1),
(140522,23286,530,1,0,0,-5023.56,465.013,-8.61042,2.50162,300,5,0,5240,0,0,1),
(140523,23286,530,1,0,0,-5079.76,468.967,-8.46821,1.56307,300,5,0,5240,0,0,1),
(140524,23286,530,1,0,0,-5018.34,488.495,-8.07559,1.01721,300,5,0,5240,0,0,1),
(140525,23286,530,1,0,0,-5129.29,425.833,-11.3592,3.62866,300,5,0,5240,0,0,1),
(140526,23286,530,1,0,0,-5012.51,543.045,-4.53214,4.81461,300,5,0,5240,0,0,1),
(140527,23286,530,1,0,0,-5094.57,511.98,-11.678,2.10106,300,5,0,5240,0,0,1),
(140528,23286,530,1,0,0,-5113.43,461.183,-10.5322,0.00404715,300,5,0,5240,0,0,1),
(140529,23286,530,1,0,0,-5095.13,646.196,32.9789,1.9856,300,5,0,5240,0,0,1),
(140530,23286,530,1,0,0,-5048.1,633.528,22.6769,1.57798,300,5,0,5240,0,0,1),
(140531,23286,530,1,0,0,-5107.42,682.474,34.8255,1.57798,300,5,0,5240,0,0,1),
(140532,23286,530,1,0,0,-5069.87,675.499,33.4247,3.56974,300,5,0,5240,0,0,1),
(140533,23286,530,1,0,0,-5146.54,491.249,-13.8132,5.48925,300,5,0,5240,0,0,1),
(140534,23286,530,1,0,0,-5173.72,421.3,-10.4883,3.59644,300,5,0,5240,0,0,1),
(140535,23286,530,1,0,0,-5182.14,343.977,-21.4375,1.99184,300,5,0,5240,0,0,1),
(140536,23286,530,1,0,0,-5219.86,338.501,-22.0416,3.73542,300,5,0,5240,0,0,1);
DELETE FROM creature WHERE guid between 140540 and 140542;
-- Black Blood of Draenor
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(140540,23286,530,1,0,0,-4995.15,520.18,-5.37083,1.45893,300,5,0,5240,0,0,1),
(140541,23286,530,1,0,0,-5176.14,374.761,-19.8123,5.43698,300,5,0,5240,0,0,1),
(140542,23286,530,1,0,0,-5146.27,346.642,-18.8773,0.358768,300,5,0,5240,0,0,1);
-- Black Blood of Draenor -- (Shadowmoon Valley)
DELETE FROM creature WHERE guid between 140702 and 140703;
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140702,23286,530,1,0,0,-5037.76,361.996,2.47224,4.83238,300,0,0,5240,0,0,2);
DELETE FROM creature_movement WHERE id between 140702 and 140703;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140702,1,-5028.69,337.405,1.28132,0,0,0,0,0,0,0,0,0,4.25838,0,0),
(140702,2,-5034.7,326.371,-1.17461,0,0,0,0,0,0,0,0,0,4.25838,0,0),
(140702,3,-5043.8,308.722,-6.34723,0,0,0,0,0,0,0,0,0,4.25838,0,0),
(140702,4,-5049.19,298.824,-7.57796,0,0,0,0,0,0,0,0,0,3.52325,0,0),
(140702,5,-5072.68,290.605,-8.30046,0,0,0,0,0,0,0,0,0,3.52325,0,0),
(140702,6,-5080.16,287.886,-8.07662,0,0,0,0,0,0,0,0,0,3.52325,0,0),
(140702,7,-5078.26,291.331,-7.91104,0,0,0,0,0,0,0,0,0,0.340812,0,0),
(140702,8,-5052.26,300.331,-7.57235,0,0,0,0,0,0,0,0,0,0.891908,0,0),
(140702,9,-5046.45,304.058,-7.0923,0,0,0,0,0,0,0,0,0,1.05631,0,0),
(140702,10,-5033.16,348.629,2.59315,0,0,0,0,0,0,0,0,0,1.8582,0,0),
(140702,11,-5037.76,361.996,2.47224,0,0,0,0,0,0,0,0,0,4.83238,0,0);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140703,23286,530,1,0,0,-5037.75,598.596,18.3524,3.43622,300,0,0,5240,0,0,2);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
(140703,1,-5026.54,602.799,19.1664,0,0,0,0,0,0,0,0,0,3.53362,0,0),
(140703,2,-5048.57,594.614,18.9736,0,0,0,0,0,0,0,0,0,0.325262,0,0);

-- The Great Murkblood Revolt (q.11081) -H -A -- according to comments (wowhead is wrong here)
UPDATE item_loot_template SET ChanceOrQuestChance = 2, condition_id = 968 WHERE entry = 32724 AND item = 32726;
DELETE FROM conditions WHERE condition_entry IN (242, 966,967,968);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(967, 8, 11075, 0), -- q. item should drop after quest completed
(966, 22, 11081, 0), -- q. item shouldnt be droped anymore after q. taken/completed
(968, -1, 967, 966);

