-- Eagle Trash Aggro Trigger 24223 used to start gauntlet incase people skip with invisibilty, aggro on Amani'shi Lookout 24175 Aggro - npc_amanishi_lookout
UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 24223; -- CREATURE_EXTRA_FLAG_FORCE_ATTACKING_CAPABILITY

