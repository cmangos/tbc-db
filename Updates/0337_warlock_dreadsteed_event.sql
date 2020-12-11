UPDATE gameobject_template SET Faction=35 WHERE entry=179672; -- Wheel of the Black March
UPDATE gameobject_template SET Faction=35 WHERE entry=179673; -- Doomsday Candle
UPDATE gameobject_template SET Faction=35 WHERE entry=179674; -- Bell of Dethmoora
UPDATE creature_template SET UnitFlags=768 WHERE Entry=14500; -- J'eevee
DELETE FROM conditions WHERE condition_entry IN (3147, 3148);
UPDATE creature_template SET Faction=90 WHERE Entry=14482; -- Xorothian Imp
UPDATE creature_template SET Faction=90 WHERE Entry=14483; -- Dread Guard
-- add missing trap object required for spell 23226 Ritual Candle Aura to work properly - must be casted by this GO
INSERT INTO gameobject_template (entry, `type`, displayId, `name`, IconName, castBarCaption, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, ScriptName) VALUES
('179688', '6', '5811', 'Ritual Candle Aura', '', '', '0', '0', '0', '1', '0', '0', '0', '23226', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');


