-- =============================
-- THE SUNKEN TEMPLE TBC UPDATES
-- =============================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (8580,8443,5721,5713,5722,5715,5710,5401,5714,5717,5719,5711,5709,5708,5399,5720,5400,5712,5716);











