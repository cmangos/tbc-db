-- ============================
-- BLACKROCK DEPTHS TBC UPDATES
-- ============================

-- ======================================
-- All Bosses Are Immune To Crowd Control -- Daze, Horror, Shackle, Banish, Polymorph, Knockout, Freeze, Stun, Snare, Sleep, Silence, Pacify, Root, Fear, Distract, Disarm, Confused, Charm
-- ======================================
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|76234719 WHERE entry IN (9025,9016,9319,9018,10096,9024,9033,8983,9543,9537,9499,9502,9017,9056,9041,9042,9156,9938,8929,9019);











