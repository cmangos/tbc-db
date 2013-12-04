-- Updated faction and flags of creatures involved in quest 8519 (A Pawn on the Eternal Board)
-- 370 (Armies of C’Thun) and 635 (Cenarion Circle)
UPDATE `creature_template` SET `Faction` = 635 WHERE `entry` IN (15378, 15379, 15380, 15382); -- Merithra of the Dream, Caelestrasz, Arygos, Fandral Staghelm
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 15381; -- Anachronos the Ancient
UPDATE `creature_template` SET `Faction` = 1608, `UnitFlags` = 32773 WHERE `entry` = 15423; -- Kaldorei Infantry
UPDATE `creature_template` SET `Faction` = 370, `UnitFlags` = 32773 WHERE `entry` IN (15414, 15421, 15422, 15424); -- Qiraji Wasp, Qiraji Drone, Qiraji Tank, Anubisath Conqueror

