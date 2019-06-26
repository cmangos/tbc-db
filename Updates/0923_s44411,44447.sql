-- Add spell_script_target for Sunblade Keeper 24762, Nether Energy 24781, Brightscale Wyrm 24761 Feeding Event
DELETE FROM `spell_script_target` WHERE `entry` IN (44411,44447);
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(44411, 1, 24781, 0), -- Sunblade Keeper 24762 casts Cube Beam 44411 on Nether Energy 24781
(44447, 1, 24761, 0); -- Nether Energy 24781 casts Threat 44447 on Brightscale Wyrm 24761

