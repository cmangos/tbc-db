-- add more details to coords - 0 orientation are no longer in sniffs
DELETE FROM spell_target_position WHERE id IN(34727,34730,34731,34732,34733,34734,34735,34736,34737,34739,34741);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
('34727', '553', '26', 		'419', 		'-24.91667','5.372292'),
('34730', '553', '84.83', 	'362.09', 	'-28.1', 	'0'),
('34731', '553', '56', 		'428', 		'-24.91667','4.464394'),
('34732', '553', '46.65', 	'360.87', 	'-27.71', 	'0'),
('34733', '553', '94', 		'416', 		'-26.91667','3.611777'),
('34734', '553', '94', 		'376', 		'-26.91667','2.812894'),
('34735', '553', '94', 		'376', 		'-27', 		'0'),
('34736', '553', '66', 		'353', 		'-25.91667','2.025543'),
('34737', '553', '94', 		'376', 		'-27', 		'0'),
('34739', '553', '33', 		'366', 		'-24.91667','1.080844');

-- Add Leash for Warp Splinter 17977,21582
UPDATE `creature_template` SET `Leash` = 95 WHERE `entry` IN (17977,21582);

-- Sapling 19949,21567
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` IN (19949,21567);

