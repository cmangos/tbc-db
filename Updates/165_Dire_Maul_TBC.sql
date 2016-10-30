-- =====================
-- DIRE MAUL TBC UPDATES
-- =====================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (11490,13280,14327,11492,14326,14322,14321,14323,14325,11501,14324,11489,11488,11487,11496,11486);











