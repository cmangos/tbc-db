ALTER TABLE db_version CHANGE COLUMN required_s2489_01_mangos_pet_spell_lists required_s2490_01_mangos_spell_threat_mask bit;

ALTER TABLE `spell_threat` ADD COLUMN `inverseEffectMask` INT UNSIGNED DEFAULT '0' AFTER `ap_bonus`;

UPDATE spell_threat SET InverseEffectMask=1 WHERE entry IN(6495);
UPDATE spell_threat SET InverseEffectMask=2 WHERE entry IN(32592,32375);
UPDATE spell_threat SET InverseEffectMask=4 WHERE entry IN(5246); -- this is a workaround for removing error for now, effect 2 will apply threat

