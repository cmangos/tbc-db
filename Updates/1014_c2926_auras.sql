-- Correct Stealth Auras for Silvermane Stalker 2926 (fixing hitting while being nearly invisible)
UPDATE `creature_template_addon` SET `bytes1` = 0, `auras` = '7939 22766' WHERE `entry` = 2926;

