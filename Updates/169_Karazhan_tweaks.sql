UPDATE creature_template SET ExtraFlags= ExtraFlags|256 WHERE entry IN(16524); -- make shade of aran immune to taunt

UPDATE creature_template SET EquipmentTemplateId = 154 WHERE entry IN (16152, 15550); -- give attumen weapons

DELETE FROM item_template WHERE entry = 11591;
INSERT INTO item_template VALUES
(11591, 2, 8, -1, 'Attumen''s Sword', 21555, 1, 0, 1, 104, 20, 17, -1, -1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, '', 0, 0, 0, 0, 0, 0);

DELETE FROM creature_equip_template WHERE entry = 788;
INSERT INTO creature_equip_template VALUES
(154, 11591, 0, 0);

UPDATE creature_loot_template SET ChanceOrQuestChance=3 WHERE item=22559 AND entry=15687; -- Mongoose drop rate 3% off moroes, thottbot data

