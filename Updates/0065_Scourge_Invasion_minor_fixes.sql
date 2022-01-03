REPLACE INTO `spell_script_target` VALUES(31315, 1, 16230, 0); -- Allow the Boss-Summon spell to hit the Cultist
REPLACE INTO `spell_script_target` VALUES(28056, 1, 16172, 0); -- Allow the death spell of shadow of doom to hit the necrotic shard
UPDATE `creature_template` SET `faction`=1630 WHERE `entry`=16143; -- Make Shadow of Doom evil
UPDATE `creature_template` SET `UnitFlags`=256 WHERE `entry`=16136; -- Make Necrotic Shard not attackable
UPDATE `creature_template` SET `UnitFlags`=33554432 WHERE `entry` IN (16356, 16346, 16336, 16306, 16338, 16421, 16386, 16398, 16401); -- Invisible Helper NPCs
UPDATE `creature` SET `spawntimesecsmin`=27000, `spawntimesecsmax`=27000 WHERE `id`=16398; -- Don't respawn or spawn Necropolis Proxies. They're spawned by the Necropolis when required
UPDATE `gameobject_template` SET `Flags`=4 WHERE `entry` IN (181172, 181223, 181215, 181374, 181373, 181154); -- Make Necropolis untargetable/unclickable
UPDATE `gameobject` SET `spawntimesecsmin`=-1, `spawntimesecsmax`=-1 WHERE `id` IN (181136); -- Summoning Circle
UPDATE `gameobject` SET `spawntimesecsmin`=-1, `spawntimesecsmax`=-1 WHERE `id` IN (181154, 181373, 181374, 181215, 181223); -- Necropoli
UPDATE `gameobject` SET `spawntimesecsmin`=-1, `spawntimesecsmax`=-1 WHERE `id` in (181142, 181173, 181174, 181191, 181192, 181193, 181194); -- Doodads
UPDATE `creature_template` SET `ArmorMultiplier`=55 WHERE `entry`=16421; -- Add armor to the necropolis health npc so that it survives several attacks
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=16398; -- Do not let the proxies move
UPDATE `creature_template` SET `MinLevel`=60, `MaxLevel`=60 WHERE `entry` IN (16396, 16432); -- Adjust Level for Elite Guards to Level 60
UPDATE `spell_template` SET `EffectImplicitTargetA1`=1, `AttributesServerside`=4 WHERE `Id` IN(28313);
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=181373;
UPDATE `gameobject_template` SET `size`=2.0 WHERE `entry`=181374;
UPDATE `gameobject_template` SET `size`=2.5 WHERE `entry` IN(181172, 181215);
UPDATE `gameobject_template` SET `size`=3.5 WHERE `entry`=181223;
