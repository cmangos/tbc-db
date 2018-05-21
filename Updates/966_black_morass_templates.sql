UPDATE creature_template SET MovementType=2 WHERE entry=18553; -- Dark Portal Black Crystal Invisible Stalker
UPDATE creature_template SET ModelId1=16656, ModelId2=16657, UnitFlags=33536, MovementType=2 WHERE entry=17023; -- Shadow Council Enforcer
UPDATE creature_template SET NPCFlags=0 WHERE entry=15608; -- Medivh

UPDATE areatrigger_teleport SET target_position_x=-1491.61, target_position_y=7056.51, target_position_z=32.1011, target_orientation=1.745329 WHERE id=4320; -- Entrance
UPDATE areatrigger_teleport SET target_position_x=-8759.51, target_position_y=-4192.27, target_position_z=-209.501, target_orientation=5.497787 WHERE id=4322; -- Entrance

