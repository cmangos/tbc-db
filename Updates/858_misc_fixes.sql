-- Netherstorm Crystal Target needs to float and be visible to everyone
UPDATE creature_template SET ExtraFlags=0,InhabitType=4 WHERE entry IN(19421);

-- Remove wrong affect masks in favor of using spell_template ones
DELETE FROM spell_affect WHERE entry IN(16086,16544);

-- Magtheridon shadow grasp should hit dummy and then second spell hit magtheridon
DELETE FROM spell_script_target WHERE entry IN(30410);
INSERT INTO spell_script_target VALUES
('30410', '1', '17376', '0');

-- Correct data for Shaman Fire and Earth ele
UPDATE creature_template SET HealthMultiplier=1.3,FactionAlliance=1629,FactionHorde=1629,MinLevel=66,MaxLevel=66 WHERE entry IN(15430); -- earth elemental totem
UPDATE creature_template SET SchoolImmuneMask=8,Leash=50,MinLevel=66,MaxLevel=70,SpeedWalk=3.88889/2.5,SpeedRun=8/7 WHERE entry IN(15352); -- greater earth elemental
UPDATE creature_template SET HealthMultiplier=1.0,FactionAlliance=1629,FactionHorde=1629,MinLevel=68,MaxLevel=68 WHERE entry IN(15438); -- fire elemental totem
UPDATE creature_template SET SchoolImmuneMask=4,Leash=50,MinLevel=68,MaxLevel=70,SpeedWalk=2.5/2.5,SpeedRun=8/7 WHERE entry IN(15438); -- greater fire elemental

-- correct flags for snake trap snakes
UPDATE creature_template SET UnitFlags=0x00008000 WHERE entry IN(19921,19833);

-- Add affect mask for Improved Consecration to affect Consecration
DELETE FROM spell_affect WHERE entry IN(34252);
INSERT INTO spell_affect VALUES
(34252,0,0x0000000000000020);

-- this shield should not scale with anything
DELETE FROM spell_bonus_data WHERE entry IN(32643);
INSERT INTO spell_bonus_data(entry,comments) VALUES
(32643,'Item - Petrified Lichen Guard');

DELETE FROM creature WHERE id IN(17077); -- spawned with script

-- correct mask for Presence of Mind - taken from wotlk and checked against patch notes
UPDATE spell_affect SET SpellFamilyMask=0x0000100061400035 WHERE entry IN(12043);


