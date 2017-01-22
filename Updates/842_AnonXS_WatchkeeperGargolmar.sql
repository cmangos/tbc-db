UPDATE `spell_template` SET `StackAmount` = 10 WHERE `id` IN (30641, 36814);

UPDATE `creature_linking` SET `flag` = `flag`|4 WHERE `master_guid` = 62083;
