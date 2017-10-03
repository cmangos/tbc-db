-- =================================================================
-- Fix Prince Malchezaar's Axes (17650) Not Attackable or Selectable
-- =================================================================
UPDATE creature_template SET NPCFlags=0, UnitFlags=33554434 WHERE entry IN (17650);

