-- Add CREATURE_EXTRA_FLAG_CIVILIAN for named city guards to enable guard summoning
-- https://github.com/cmangos/classic-db/commit/052e3cbfba032318327686100fa1d8177faa0f90
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|65536 WHERE `entry` IN (
14363, -- Thief Catcher Shadowdelve
14365, -- Thief Catcher Farmountain
14367, -- Thief Catcher Thunderbrew
14375, -- Scout Stronghand
14376, -- Scout Manslayer
14377, -- Scout Tharr
14378, -- Huntress Skymane
14379, -- Huntress Ravenoak
14380, -- Huntress Leafrunner
14402, -- Seeker Cromwell
14403, -- Seeker Nahr
14404, -- Seeker Thompson
14423, -- Officer Jaxon
14438, -- Officer Pomeroy
14439, -- Officer Brady
14440, -- Hunter Sagewind
14441, -- Hunter Ragetotem
14442 -- Hunter Thunderhorn
);

-- Remove Static Stealth Detection Aura from named guards as they were updated in wotlk from 18950 to 41634 (basically the same but prevents aligning with classic-db
UPDATE `creature_addon` SET `auras` = '18950' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE id IN (
14363, -- Thief Catcher Shadowdelve
14365, -- Thief Catcher Farmountain
14367, -- Thief Catcher Thunderbrew
14375, -- Scout Stronghand
14376, -- Scout Manslayer
14377, -- Scout Tharr
14378, -- Huntress Skymane
14379, -- Huntress Ravenoak
14380, -- Huntress Leafrunner
14402, -- Seeker Cromwell
14403, -- Seeker Nahr
14404, -- Seeker Thompson
14423, -- Officer Jaxon
14438, -- Officer Pomeroy
14439, -- Officer Brady
14440, -- Hunter Sagewind
14441, -- Hunter Ragetotem
14442 -- Hunter Thunderhorn
));


UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` IN (
14363, -- Thief Catcher Shadowdelve
14365, -- Thief Catcher Farmountain
14367, -- Thief Catcher Thunderbrew
14375, -- Scout Stronghand
14376, -- Scout Manslayer
14377, -- Scout Tharr
14378, -- Huntress Skymane
14379, -- Huntress Ravenoak
14380, -- Huntress Leafrunner
14402, -- Seeker Cromwell
14403, -- Seeker Nahr
14404, -- Seeker Thompson
14423, -- Officer Jaxon
14438, -- Officer Pomeroy
14439, -- Officer Brady
14440, -- Hunter Sagewind
14441, -- Hunter Ragetotem
14442 -- Hunter Thunderhorn
);
