DELETE FROM string_id WHERE Id=10001 AND Name='BONE_WASTES_PORTAL_TRIGGER';
INSERT INTO string_id(Id, Name) VALUES
(10001,	'BONE_WASTES_PORTAL_TRIGGER');
UPDATE creature_template SET StringId1=10001 WHERE entry=21463;
UPDATE dbscripts_on_creature_movement SET buddy_entry=10001, data_flags=7+2048 WHERE id=2163801 AND command=45 AND datalong=10067;

