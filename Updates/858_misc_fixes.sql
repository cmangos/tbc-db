-- Netherstorm Crystal Target needs to float and be visible to everyone
UPDATE creature_template SET ExtraFlags=0,InhabitType=4 WHERE entry IN(19421);

-- Remove wrong affect masks in favor of using spell_template ones
DELETE FROM spell_affect WHERE entry IN(16086,16544);

-- Magtheridon shadow grasp should hit dummy and then second spell hit magtheridon
DELETE FROM spell_script_target WHERE entry IN(30410);
INSERT INTO spell_script_target VALUES
('30410', '1', '17376', '0');


