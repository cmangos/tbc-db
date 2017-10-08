UPDATE creature_template SET Unitflags=256 WHERE entry=17404; -- make mob unattackable and passive
UPDATE creature_template SET ExtraFlags=128,Unitflags=33555200 WHERE entry=17413; -- make mob invisible, unattackable and passive

UPDATE dbscripts_on_event SET datalong2=200000 WHERE id=14376; -- adjust despawn timer on script spawned mobs from 900 seconds to 200 seconds

