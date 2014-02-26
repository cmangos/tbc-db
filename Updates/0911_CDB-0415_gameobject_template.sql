-- Fixed size of gameobjects 73940 (Ooze Covered Silver Vein) and 105569 (Silver Vein)
-- as they were twice the size of other veins
UPDATE `gameobject_template` SET `size` = 0.5 WHERE `entry` = 73940; -- 105569 already fixed https://github.com/cmangos/tbc-db/blob/5efd14c923fe0647d68d8fafa7453a50facc7649/Updates/0732_o.103711%2C105569%2C103713_azurlode_mine_bael_modan.sql#L7

