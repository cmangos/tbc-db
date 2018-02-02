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


