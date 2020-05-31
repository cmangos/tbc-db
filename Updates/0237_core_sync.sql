ALTER TABLE db_version CHANGE COLUMN required_s2410_01_mangos_gameobject_template required_s2411_01_mangos_command bit;

DELETE FROM command WHERE name IN ('movegens','cooldown');

REPLACE INTO command VALUES
('cooldown list',3,'Syntax: .cooldown list  Active cooldown from selected unit.'),
('cooldown clear',3,'Syntax: .cooldown clear [spell id] Remove cooldown from selected unit.'),
('cooldown clearclientside',3,'Syntax: .cooldown clearclientside  Clear all cooldown client side only.'),
('movement movegens',3,'Syntax: .movement movegens  Show movement generators stack for selected creature or player.'),
('movement cometome',3,'Syntax: .movement cometome  Move selected creature to you.'),
('movement movespeed',3,'Syntax: .movement movespeed  Show speed of selected creature.');

ALTER TABLE db_version CHANGE COLUMN required_s2411_01_mangos_command required_s2412_01_mangos_mount_commands bit;

DELETE FROM command WHERE name IN ('gm mountup','modify mount');

INSERT INTO command VALUES
('gm mountup',1,'Syntax: .gm mountup [fast|slow]\r\n\r\nAcquire a random unusual land mount.'),
('modify mount',1,'Syntax: .modify mount [fast|slow]\r\n\r\nProvide selected player a random unusual land mount.');

