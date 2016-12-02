-- ========================================
-- Implement NPC Swimming Proper Animations
-- ========================================
UPDATE creature_template SET UnitFlags=UnitFlags|32768 WHERE InhabitType IN (2,3);

