-- Add spell_script_target for Consume 37422
DELETE FROM `spell_script_target` WHERE `entry` = 37422;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(37422, 1, 21805, 0), -- Protectorate Avenger
(37422, 1, 21783, 0), -- Protectorate Regenerator
(37422, 1, 20984, 0); -- Protectorate Defender

