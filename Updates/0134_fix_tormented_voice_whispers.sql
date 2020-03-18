DELETE FROM dbscript_string WHERE entry IN (2000000545,2000000547,2000000549,2000000551,2000001425,2000001426,2000001427,2000001429,2000001431);
DELETE FROM dbscript_random_templates WHERE id=2 AND target_id>0;
DELETE FROM dbscript_random_templates WHERE id=1002;
DELETE FROM dbscript_random_templates WHERE id=1001 AND target_id=2000001426;
UPDATE dbscript_string SET content_default='Leave this place. <The relic emits a white hot arc of flame. A memory has been gained: A lone Dark Iron dwarf is surrounded by seven corpses, kneeling before a monolith of flame.>', broadcast_text_id=4594 WHERE entry=2000000548;
DELETE FROM dbscripts_on_event WHERE id=3361 AND datalong=1002 AND delay=3000;


