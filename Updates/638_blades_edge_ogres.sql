-- ----------------------
-- Texts
-- ----------------------

DELETE FROM dbscript_random_templates WHERE id=10029;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10029,0,-495,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)'),
(10029,0,-496,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)'),
(10029,0,-497,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)'),
(10029,0,-498,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)'),
(10029,0,-499,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)'),
(10029,0,-500,0,'Generic Blades Edge Ogre On Death Text (If Player has Completed Quest 11000)');

DELETE FROM `conditions` WHERE `condition_entry`=10040;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(10040, 8, 11000, 0);



