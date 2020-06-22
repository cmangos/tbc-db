-- Fix for the quest The Skettis Offensive
UPDATE creature_template SET MovementType = 0 WHERE entry = 22376;
UPDATE creature_template SET MovementType = 0 WHERE entry = 22375;