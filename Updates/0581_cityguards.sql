-- based on https://github.com/cmangos/classic-db/commit/2ff48db99c6a54bea60da2c963e846296e82c06a
-- followup to https://github.com/cmangos/tbc-db/commit/a1f849be4d669f1ac6bc9c5c484dcf7c1fde42e5

UPDATE `creature` SET `modelid` = 0, `spawndist` = 0, `currentwaypoint` = 0, `spawntimesecsmin` = 300, `spawntimesecsmax` = 900 WHERE `id` IN (
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

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE id IN (
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

UPDATE `creature_template_addon` SET `b2_0_sheath` = 1, `b2_1_flags` = 16 WHERE `entry` IN (
14363, -- Thief Catcher Shadowdelve
14365, -- Thief Catcher Farmountain
14367, -- Thief Catcher Thunderbrew
14375, -- Scout Stronghand				https://www.wowhead.com/npc=14375/scout-stronghand#screenshots:id=69413
14376, -- Scout Manslayer				https://www.wowhead.com/npc=14376/scout-manslayer#screenshots:id=7179
14377, -- Scout Tharr					https://www.wowhead.com/npc=14377/scout-tharr#screenshots:id=69414
14378, -- Huntress Skymane				https://www.wowhead.com/npc=14378/huntress-skymane#screenshots:id=280907
14379, -- Huntress Ravenoak				https://www.wowhead.com/npc=14379/huntress-ravenoak#screenshots:id=56120
14380, -- Huntress Leafrunner			https://www.wowhead.com/npc=14380/huntress-leafrunner#screenshots:id=76325
14402, -- Seeker Cromwell				https://www.wowhead.com/npc=14402/seeker-cromwell#screenshots:id=76003
14403, -- Seeker Nahr					https://www.wowhead.com/npc=14403/seeker-nahr#screenshots:id=38694
14404, -- Seeker Thompson				https://www.wowhead.com/npc=14404/seeker-thompson#screenshots:id=36981
14423, -- Officer Jaxon					https://www.wowhead.com/npc=14423/officer-jaxon#screenshots:id=3107
14438, -- Officer Pomeroy				https://www.wowhead.com/npc=14438/officer-pomeroy#screenshots:id=53210
14439, -- Officer Brady					https://www.wowhead.com/npc=14439/officer-brady#screenshots:id=76019
14440, -- Hunter Sagewind				https://www.wowhead.com/npc=14440/hunter-sagewind#screenshots:id=36428
14441, -- Hunter Ragetotem				https://www.wowhead.com/npc=14441/hunter-ragetotem#screenshots:id=77923
14442 -- Hunter Thunderhorn				https://www.wowhead.com/npc=14442/hunter-thunderhorn#screenshots:id=76487
);

