-- ===================
-- Fixes by Killerwife
-- ===================
-- Teleport this quest script
-- http://www.wowhead.com/quest=10857/teleport-this

-- minor position changes to match visuals from retail
UPDATE creature SET position_x=4697.120605,position_y=3298.202148,position_z=178.891113 WHERE id=22348; 
UPDATE creature SET position_x=4734.637207,position_y=3193.377441,position_z=161.477127 WHERE id=22350;
UPDATE creature SET position_x=4672.908203,position_y=3126.405029,position_z=166.722290 WHERE id=22351;

-- UPDATE creature_template_spells SET spell2=38920 WHERE entry=16943; TBC-DB only
DELETE FROM creature_template_spells WHERE entry in(20928,16943);
INSERT INTO creature_template_spells VALUES(20928,37179,38920,0,0);
INSERT INTO creature_template_spells VALUES(16943,36255,38920,0,0); -- this must be added because thats how quest is completed


DELETE FROM spell_script_target WHERE entry=38920;
INSERT INTO spell_script_target VALUES(38920,1,22348,0);
INSERT INTO spell_script_target VALUES(38920,1,22350,0);
INSERT INTO spell_script_target VALUES(38920,1,22351,0);

