-- Added missing spell target for two spells used in Garr encounter 19515 (Enrage Trigger) and 20482 (Firesworn Eruption Trigger)
DELETE FROM `spell_script_target` WHERE `entry` IN (19515, 20482);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('19515', '1', '12057', '0'),
('20482', '1', '12099', '0');

