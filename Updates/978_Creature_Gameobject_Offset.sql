-- ====================================================================
-- ==========          Gameobject Offset Improvements  		 ==========
-- ====================================================================

-- Terocone 181277 - no offsets

-- Ancient Lichen 181278 - no offsets

-- Netherbloom 181279, 181282(dummy) - no offsets

-- Nightmare Vine 181280, 181285(dummy)
-- becomes dublicate with fixed position_z
DELETE FROM `gameobject` WHERE `guid` IN (141924);
DELETE FROM `pool_gameobject` WHERE `guid` IN (141924);

UPDATE `gameobject` SET `position_z` = 49.0002 WHERE `guid` IN (141944); -- .go xyz -3723,06    547,62    51,3741 530

-- ====================================================================

-- Classic Nodes
UPDATE `gameobject` SET `position_z` = 94.7325 WHERE `guid` IN (112291,112292,112293,112294,112295); -- pool 8523 .go xyz -1300	-1728	101,239 1
























-- ====================================================================
-- ==========          Creature Offset Improvements  		 ==========
-- ====================================================================

