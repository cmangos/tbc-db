-- =================================================
-- Move DBScripts to SD2 (Maximus Re-Scripted Event)
-- =================================================
DELETE FROM dbscripts_on_event where id=1370;
DELETE FROM dbscripts_on_quest_start WHERE id=1713;
DELETE FROM db_script_string where entry in (2000000029);

