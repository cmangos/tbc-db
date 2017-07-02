ALTER TABLE db_version CHANGE COLUMN required_s2343_01_mangos_quest_template required_s2344_01_mangos_gameobject_template bit;

ALTER TABLE gameobject_template 
ADD COLUMN ExtraFlags INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER flags,
ADD COLUMN CustomData1 INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER data23;

UPDATE gameobject_template SET CustomData1=data14,data14=0 WHERE type=6 AND data14>0; -- use new columns instead of sniffed column

UPDATE gameobject_template SET ExtraFlags=1 WHERE displayId IN(4392,4472,4491,6785,3073) AND type=6; -- remove core hack and use new column instead


