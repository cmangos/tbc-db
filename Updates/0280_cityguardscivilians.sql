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

