-- Added missing GO 180665 (Draconic for Dummies)
-- Thanks @Vanillafanatic for pointing.
DELETE FROM gameobject WHERE id IN (180665);
INSERT INTO gameobject VALUES (160191, 180665, 0, 1, -8340.24, 413.397, 124.49, 2.89435, 0, 0, 0.992368, 0.123309, 0, 0, 100, 1);
