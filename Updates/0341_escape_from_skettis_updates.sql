-- Escape from Skettis q.11085

-- Cage (185952)
UPDATE gameobject SET position_x=-3664.54, position_y=3389.79, position_z=312.952, orientation=2.356195, rotation2=0.9238796, rotation3=0.9238796 WHERE guid=242000;
UPDATE gameobject SET position_x=-3718.84, position_y=3788.04, position_z=302.891, orientation=4.153885, rotation2=-0.8746195, rotation3=0.4848101 WHERE guid=242001;
UPDATE gameobject SET rotation2=0.3987484, rotation3=0.9170604 WHERE guid=242002;

UPDATE gameobject_template SET faction=114, flags=0 WHERE entry=185952;

-- Skyguard Prisoner (23383)
UPDATE creature SET position_x=-3664.54, position_y=3389.79, position_z=312.952, orientation=2.356194 WHERE guid=140774;
UPDATE creature SET position_x=-3718.84, position_y=3788.04, position_z=302.891, orientation=4.153883 WHERE guid=140773;


