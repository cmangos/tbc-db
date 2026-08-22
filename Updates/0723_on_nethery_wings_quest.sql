# Misc fixes for quest: "On Nethery Wings"

UPDATE dbscripts_on_creature_death SET buddy_entry = 19554, search_radius = 86832, data_flags = 0 where id = 20899;
UPDATE gameobject_template SET data1 = 100 WHERE entry = 184643;
UPDATE creature_template SET InhabitType = 4 WHERE Entry = 19565;
