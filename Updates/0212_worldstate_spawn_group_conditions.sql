ALTER TABLE db_version CHANGE COLUMN required_s2446_01_mangos_command required_s2447_01_mangos_worldstate_name bit;

DROP TABLE IF EXISTS worldstate_name;
CREATE TABLE worldstate_name (
`Id` INT(11) NOT NULL COMMENT 'Worldstate variable Id',
`Name` VARCHAR(200) NOT NULL COMMENT 'Name and use of variable',
PRIMARY KEY(`Id`)
);


DELETE FROM worldstate_name WHERE Id IN(10000,72801);
INSERT INTO worldstate_name(Id, Name) VALUES
(10000,'ZA - first 4 bosses dead - spawn Malacrass'),
(72801,'SWP - Muru - Alive');

