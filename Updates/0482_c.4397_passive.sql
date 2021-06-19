-- Correct Barbs Aura Passive for Mudrock Spikeshell 4397
-- https://github.com/cmangos/tbc-db/commit/bea69baa2df99b82882f9ed8396d07aed304f729
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 4397; -- 8393 -> 9464 (handled in acid)

