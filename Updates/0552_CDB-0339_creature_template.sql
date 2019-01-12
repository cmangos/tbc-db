-- Updated faction and flags of creatures involved in quest 8519 (A Pawn on the Eternal Board)
-- 370 (Armies of C’Thun) and 635 (Cenarion Circle)
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 15381; -- Anachronos the Ancient
UPDATE `creature_template` SET `UnitFlags` = 32773 WHERE `entry` IN (15423, 15414, 15421, 15422, 15424); -- Kaldorei Infantry, Qiraji Wasp, Qiraji Drone, Qiraji Tank, Anubisath Conqueror

