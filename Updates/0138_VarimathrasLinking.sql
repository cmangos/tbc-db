-- Add Linking for Undercity Royal Quarter
DELETE FROM `creature_linking_template` WHERE `master_entry` IN (2425,10181);
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(2425, 0, 10181, 1, 0), -- Varimathras -> Lady Sylvanas Windrunner
(2804, 0, 2425, 1, 0); -- Kurden Bloodclaw -> Varimathras

