-- Add missing TBC reference_loot_template_names
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (40109,40059,40058,40057,40056);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
 -- https://github.com/cmangos/tbc-db/blob/939e67f13168cdc4928ae90dd87a699669c573d0/Updates/0348_yor_questline.sql#L79
(40109, 'Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare Items'),
 -- https://github.com/cmangos/tbc-db/commit/64bf75059bf8b24c2adf41afb97e9678335f9fb7#diff-7d397cac97d09f62582ba7da7d89308fR52
(40059, 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 0 Alive'),
(40058, 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 1 Alive'),
(40057, 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 2 Alive'),
(40056, 'Hellfire Citadel: The Shattered Halls (Boss Loot) - Shattered Hand Executioner (Heroic) - 3 Alive');

